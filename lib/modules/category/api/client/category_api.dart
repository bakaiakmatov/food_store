import 'package:dio/dio.dart';
import 'package:food_store_test/modules/category/api/category_api_strings.dart';
import 'package:food_store_test/modules/category/domain/categories_data.dart';
import 'package:retrofit/retrofit.dart';

part 'category_api.g.dart';

@RestApi()
abstract class CategoryApi {
  factory CategoryApi(Dio dio, {String baseUrl}) = _CategoryApi;

  @GET(CategoryApiStrings.category)
  Future<CategoriesData> categoryResponse();
}
