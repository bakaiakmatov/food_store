import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_store_test/modules/basket/presentation/screens/basket_screen.dart';
import 'package:food_store_test/modules/category/presentation/screens/caregory_screen.dart';
import 'package:food_store_test/modules/profile/presentation/screens/profile_screen.dart';
import 'package:food_store_test/modules/search/presentation/screens/search_screen.dart';
import 'package:food_store_test/resources/app_colors.dart';
import 'package:food_store_test/resources/app_icons.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  Map<int, GlobalKey<NavigatorState>> navigatorKeys = {
    0: GlobalKey<NavigatorState>(),
    1: GlobalKey<NavigatorState>(),
    2: GlobalKey<NavigatorState>(),
    3: GlobalKey<NavigatorState>(),
  };

  static const List<Widget> _widgetOptions = <Widget>[
    CategoryScreen(),
    SearchScreen(),
    BasketScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: AppNavigationBar(
              icon: AppIcons.homeScreenIcon,
              color: _selectedIndex == 0
                  ? AppColors.royalBlueColor
                  : AppColors.aluminiumColor,
            ),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: AppNavigationBar(
              icon: AppIcons.searchIcon,
              color: _selectedIndex == 1
                  ? AppColors.royalBlueColor
                  : AppColors.aluminiumColor,
            ),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: AppNavigationBar(
              icon: AppIcons.basketIcon,
              color: _selectedIndex == 2
                  ? AppColors.royalBlueColor
                  : AppColors.aluminiumColor,
            ),
            label: 'Корзина',
          ),
          BottomNavigationBarItem(
            icon: AppNavigationBar(
              icon: AppIcons.profileIcon,
              color: _selectedIndex == 3
                  ? AppColors.royalBlueColor
                  : AppColors.aluminiumColor,
            ),
            label: 'Аккаунт',
          ),
        ],
        selectedItemColor: AppColors.royalBlueColor,
        unselectedItemColor: AppColors.aluminiumColor,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        landscapeLayout: BottomNavigationBarLandscapeLayout.centered,
      ),
      body: buildNavigator(),
    );
  }

  buildNavigator() {
    return Navigator(
      key: navigatorKeys[_selectedIndex],
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (_) => _widgetOptions.elementAt(_selectedIndex));
      },
    );
  }
}

class AppNavigationBar extends StatelessWidget {
  final String icon;
  final Color color;
  final double? height;

  const AppNavigationBar({
    required this.icon,
    required this.color,
    this.height,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      icon,
      colorFilter: ColorFilter.mode(color, BlendMode.srcIn),
      height: height,
    );
  }
}
