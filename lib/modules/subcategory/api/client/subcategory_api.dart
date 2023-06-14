import 'package:dio/dio.dart';
import 'package:food_store_test/modules/subcategory/api/basket_api_strings.dart';
import 'package:food_store_test/modules/subcategory/domain/dishes_data.dart';
import 'package:retrofit/retrofit.dart';

part 'subcategory_api.g.dart';

@RestApi()
abstract class SubcategoryApi {
  factory SubcategoryApi(Dio dio, {String baseUrl}) = _SubcategoryApi;

  @GET(SubcategoryApiStrings.dishes)
  Future<DishesData> dishesResponse();
}
