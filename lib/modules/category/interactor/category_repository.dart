import 'package:food_store_test/modules/category/api/client/category_api.dart';
import 'package:food_store_test/modules/category/domain/categories_data.dart';

class CategoryRepository {
  final CategoryApi _client;

  CategoryRepository({
    required CategoryApi client,
  }) : _client = client;

  Future<CategoriesData> categoryRequest() async {
    return await _client.categoryResponse();
  }
}
