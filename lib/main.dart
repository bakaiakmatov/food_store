import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_store_test/app_state/app_component.dart';
import 'package:food_store_test/modules/category/api/client/category_api.dart';
import 'package:food_store_test/modules/category/interactor/category_repository.dart';
import 'package:food_store_test/modules/category/presentation/provider/category_provider.dart';
import 'package:food_store_test/modules/subcategory/api/client/subcategory_api.dart';
import 'package:food_store_test/modules/subcategory/interactor/subcategory_repository.dart';
import 'package:food_store_test/modules/subcategory/presentation/provider/subcategory_provider.dart';
import 'package:food_store_test/resources/app_router.dart';
import 'package:food_store_test/resources/app_theme.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppComponent().init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return ScreenUtilInit(
      designSize: const Size(414, 896),
      minTextAdapt: true,
      builder: (context, _) => MultiProvider(
        providers: [
          ChangeNotifierProvider<SubcategoryProvider>(
            create: (context) => SubcategoryProvider(
              repository: SubcategoryRepository(
                client: GetIt.I.get<SubcategoryApi>(),
              ),
            ),
          ),
          ChangeNotifierProvider<CategoryProvider>(
            create: (context) => CategoryProvider(
              repository: CategoryRepository(
                client: GetIt.I.get<CategoryApi>(),
              ),
            ),
          ),
        ],
        child: MaterialApp(
          title: 'Food Store',
          debugShowCheckedModeBanner: false,
          theme: AppThemes().appTheme,
          navigatorObservers: [
            SentryNavigatorObserver(),
          ],
          routes: AppRoutes.routes,
        ),
      ),
    );
  }
}
