import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:food_store_test/modules/category/api/client/category_api.dart';
import 'package:food_store_test/modules/subcategory/api/client/subcategory_api.dart';
import 'package:get_it/get_it.dart';

class Strings {
  static String baseUrl = 'https://run.mocky.io/';
}

class AppComponent {
  final _dio = createDio(Strings.baseUrl);

  Future<void> init() async {
    GetIt.I.registerSingleton<CategoryApi>(CategoryApi(_dio));
    GetIt.I.registerSingleton<SubcategoryApi>(SubcategoryApi(_dio));
  }
}

Dio createDio(String baseUrl) {
  final dio = Dio(
    BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 5000,
      followRedirects: false,
      validateStatus: (status) => status! < 500,
      receiveTimeout: 5000,
      sendTimeout: 5000,
    ),
  );

  final interceptors = dio.interceptors;
  interceptors.clear();
  dio.interceptors.add(InterceptorsWrapper(onRequest: (options, handler) async {
    return handler.next(options);
  }, onResponse: (response, handler) {
    return handler.next(response);
  }, onError: (DioError e, handler) {
    return handler.next(e);
  }));
  interceptors.add(AwesomeDioInterceptor());

  return dio;
}
