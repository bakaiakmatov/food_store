import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:food_store_test/modules/category/domain/categories_data.dart';
import 'package:food_store_test/modules/category/interactor/category_repository.dart';

class CategoryProvider extends ChangeNotifier {
  final CategoryRepository _repository;

  CategoryProvider({required CategoryRepository repository})
      : _repository = repository {
    categoryRequest();
  }

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  set isLoading(bool val) {
    if (val != _isLoading) {
      _isLoading = val;
      notifyListeners();
    }
  }

  CategoriesData? _categoriesData;
  CategoriesData? get categoriesData => _categoriesData;

  Future<void> categoryRequest() async {
    _isLoading = true;
    try {
      final resopnse = await _repository.categoryRequest();
      _categoriesData = resopnse;
      notifyListeners();
      debugPrint('resopnse resopnse');
    } on DioError catch (e) {
      debugPrint('${e.response}');
    } finally {
      _isLoading = false;
    }
  }
}
