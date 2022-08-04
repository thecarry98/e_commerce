import 'package:get/get.dart';

import '../modules/cart_menu/bindings/cart_menu_binding.dart';
import '../modules/cart_menu/views/cart_menu_view.dart';
import '../modules/change_pw/bindings/change_pw_binding.dart';
import '../modules/change_pw/views/change_pw_view.dart';
import '../modules/drawer_menu/bindings/drawer_menu_binding.dart';
import '../modules/drawer_menu/views/drawer_menu_view.dart';
import '../modules/favorite_menu/bindings/favorite_menu_binding.dart';
import '../modules/favorite_menu/views/favorite_menu_view.dart';
import '../modules/forgot_pw/bindings/forgot_pw_binding.dart';
import '../modules/forgot_pw/views/forgot_pw_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/menu_page/bindings/menu_page_binding.dart';
import '../modules/menu_page/views/menu_page_view.dart';
import '../modules/my_order/bindings/my_order_binding.dart';
import '../modules/my_order/views/my_order_view.dart';
import '../modules/phone_verify/bindings/phone_verify_binding.dart';
import '../modules/phone_verify/views/phone_verify_view.dart';
import '../modules/product_detail/bindings/product_detail_binding.dart';
import '../modules/product_detail/views/product_detail_view.dart';
import '../modules/signup/bindings/signup_binding.dart';
import '../modules/signup/views/signup_view.dart';
import '../modules/splash/bindings/splash_binding.dart';
import '../modules/splash/views/splash_view.dart';
import '../modules/splash_pageview/bindings/splash_pageview_binding.dart';
import '../modules/splash_pageview/views/splash_pageview_view.dart';

// import '../modules/cart_menu/views/drawer.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_PAGEVIEW;
  // static const INITIAL = Routes.DRAWER;
  // static const INITIAL = Drawer;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH,
      page: () => SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: _Paths.SPLASH_PAGEVIEW,
      page: () => SplashPageviewView(),
      binding: SplashPageviewBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SIGNUP,
      page: () => SignupView(),
      binding: SignupBinding(),
    ),
    GetPage(
      name: _Paths.FORGOT_PW,
      page: () => ForgotPwView(),
      binding: ForgotPwBinding(),
    ),
    GetPage(
      name: _Paths.PHONE_VERIFY,
      page: () => PhoneVerifyView(),
      binding: PhoneVerifyBinding(),
    ),
    GetPage(
      name: _Paths.CHANGE_PW,
      page: () => ChangePwView(),
      binding: ChangePwBinding(),
    ),
    GetPage(
      name: _Paths.MY_ORDER,
      page: () => MyOrderView(),
      binding: MyOrderBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => MainView(),
      binding: MainBinding(),
    ),
    GetPage(
      name: _Paths.FAVORITE_MENU,
      page: () => FavoriteMenuView(),
      binding: FavoriteMenuBinding(),
    ),
    GetPage(
      name: _Paths.CART_MENU,
      page: () => CartMenuView(),
      // page: () => Drawer(),
      binding: CartMenuBinding(),
    ),
    GetPage(
      name: _Paths.DRAWER_MENU,
      page: () => DrawerMenuView(),
      binding: DrawerMenuBinding(),
    ),
    GetPage(
      name: _Paths.PRODUCT_DETAIL,
      page: () => ProductDetailView(),
      binding: ProductDetailBinding(),
    ),
    GetPage(
      name: _Paths.MENU_PAGE,
      page: () => const MenuPageView(),
      binding: MenuPageBinding(),
    ),
  ];
}
