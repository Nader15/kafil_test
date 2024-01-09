

import 'package:get/get.dart';

import '../View/Screens/Login_Screen/login_screen.dart';
import '../View/Screens/Register_Screen/register_screen.dart';
import '../View/Screens/Splash_Screen/splash_screen.dart';

class AppRoutes {
  //initialRoute
  static const splashScreen = Routes.splashScreen;
  static const loginScreen = Routes.loginScreen;


  //getPages
  static final routes = [
    GetPage(
      name: Routes.splashScreen,
      page: () => const SplashScreen(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      // binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.registerScreen,
      page: () => RegisterScreen(),
      // binding: LoginBinding(),
    ),

  ];
}

class Routes {
  static const splashScreen = '/splashScreen';
  static const loginScreen = '/loginScreen';
  static const registerScreen = '/registerScreen';

}
