import 'package:get/get.dart';
import '../features/login/presentations/screens/login_screen.dart';
import '../features/splash/presentations/screens/splash_screen.dart';


class AppRoute {
  static String init = "/";
  static String loginScreen = "/loginScreen";
  static String signUpScreen = "/signUpScreen";



  static List<GetPage> routes = [
    GetPage(name: init, page: () => const SplashScreen()),
    GetPage(name: loginScreen, page: () =>  LoginScreen()),

  ];
}