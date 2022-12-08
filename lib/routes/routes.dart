
import 'package:get/route_manager.dart';
import 'package:lib_app/view/screens/admin/Add_product_form_screen.dart';
import 'package:lib_app/view/screens/admin/stock_screen.dart';
import 'package:lib_app/view/screens/forgot_password_screen.dart';
import 'package:lib_app/view/screens/login_screen.dart';
import 'package:lib_app/view/screens/setting/edit_profile_screen.dart';
import 'package:lib_app/view/screens/setting/profile.dart';
import 'package:lib_app/view/screens/setting/settings_screen.dart';
import 'package:lib_app/view/screens/signup_screen.dart';
import 'package:lib_app/logic/binding/auth_binding.dart';
import 'package:lib_app/view/screens/user/customer_home.dart';




class AppRoutes {
  static const login = Routes.loginScreen;
  static const stock = Routes.stockScreen;

  static const addProduct = Routes.loginScreen;
  static const customerHome = Routes.customerHome;

  static final routes = [
    GetPage(
        name: Routes.loginScreen,
        page: () => Login_Screen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.signScreen,
        page: () => SignUpScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.forgotpasswordScreen,
        page: () => ForgotPasswordScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.profileScreen,
        page: () => ProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.editProfileScreen,
        page: () => EditProfileScreen(),
        binding: AuthBinding()),
    GetPage(
        name: Routes.settingsScreen,
        page: () => SettingScreen(),
        binding: AuthBinding()),

    GetPage(
          name: Routes.stockScreen, 
          page: () => StockScreen()),
   
    GetPage(
      name: Routes.addProductForm, 
      page: () => AddProductFromScreen()),
    GetPage(
      name: Routes.customerHome, 
      page: () => CustomerHome()),
 
  ];
}

class Routes {
  static const loginScreen = '/loginScreen';
  static const signScreen = '/signScreen';
  static const forgotpasswordScreen = '/forgotpasswordScreen';
  static const profileScreen = '/profileScreen';
  static const editProfileScreen = '/editProfileScreen';
  static const settingsScreen = '/settingsScreen';
  static const stockScreen = '/StockScreen';

  static const addProductForm = '/AddProductFromScreen';
  static const editProduct = '/EditProductScreen';
  static const customerHome = '/CustomerHome';
}
