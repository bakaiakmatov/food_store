import 'package:food_store_test/modules/subcategory/api/client/subcategory_api.dart';
import 'package:food_store_test/modules/subcategory/domain/dishes_data.dart';

class SubcategoryRepository {
  final SubcategoryApi _client;

  SubcategoryRepository({required SubcategoryApi client}) : _client = client;

  Future<DishesData> dishesResponse() => _client.dishesResponse();
}
