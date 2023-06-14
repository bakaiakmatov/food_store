import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:food_store_test/modules/subcategory/domain/dishes_data.dart';
import 'package:food_store_test/modules/subcategory/interactor/subcategory_repository.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SubcategoryProvider extends ChangeNotifier {
  final SubcategoryRepository _repository;

  SubcategoryProvider({required SubcategoryRepository repository})
      : _repository = repository {
    subcategoryRequest();
    getCartItems();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool val) {
    if (val != _isLoading) {
      _isLoading = val;
      notifyListeners();
    }
  }

  DishesData? _dishesData;
  DishesData? get dishesData => _dishesData;

  Future<void> subcategoryRequest() async {
    _isLoading = true;
    try {
      final response = await _repository.dishesResponse();
      _dishesData = response;
      debugPrint('subcategory response $response');
    } on DioError catch (e) {
      debugPrint('${e.response}');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  String _name = 'Все меню';
  String get name => _name;

  void changeTag(String name) {
    _name = name;
    notifyListeners();
  }

  String? _dishText;
  String? get dishText => _dishText;

  Future<void> addToCart(
    String name,
    int price,
    int weight,
    String imageUrl,
  ) async {
    final prefs = await SharedPreferences.getInstance();
    final cartItems = prefs.getStringList('cartItems') ?? [];

    // Проверяем, есть ли уже такое блюдо в корзине
    final itemAlreadyInCart = cartItems.any(
      (cartItem) => cartItem == '$name,$price,$weight,$imageUrl',
    );

    if (!itemAlreadyInCart) {
      cartItems.add('$name,$price,$weight,$imageUrl');
      await prefs.setStringList('cartItems', cartItems);

      _dishText = 'Блюдо добавлено в корзину';
      notifyListeners();
    } else {
      _dishText = 'Блюдо уже присутствует в корзине';
      notifyListeners();
    }

    debugPrint('cartItems $cartItems');
    await getCartItems();
    notifyListeners();
  }

  List<Dish> _cartItems = [];
  List<Dish> get cartItems => _cartItems;

  Future<void> getCartItems() async {
    final prefs = await SharedPreferences.getInstance();
    final cartItemStrings = prefs.getStringList('cartItems') ?? [];

    final items = cartItemStrings.map((cartItemString) {
      final itemData = cartItemString.split(',');
      final name = itemData[0];
      final price = int.parse(itemData[1]);
      final weight = int.tryParse(itemData[2]) ?? 0;
      final imageUrl = itemData[3];
      return Dish(
        name: name,
        price: price,
        weight: weight,
        imageUrl: imageUrl,
      );
    }).toList();

    _cartItems = items;
    notifyListeners();
  }

  Future<void> removeCartItem(Dish dish) async {
    final prefs = await SharedPreferences.getInstance();
    final cartItems = prefs.getStringList('cartItems') ?? [];

    cartItems.removeWhere((cartItem) {
      final itemData = cartItem.split(',');
      final name = itemData[0];
      final price = int.parse(itemData[1]);
      final weight = int.tryParse(itemData[2]);
      final imageUrl = itemData[3];
      return name == dish.name &&
          price == dish.price &&
          weight == dish.weight &&
          imageUrl == dish.imageUrl;
    });

    await prefs.setStringList('cartItems', cartItems);
    await getCartItems();
    notifyListeners();
  }
}
