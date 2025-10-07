import 'package:get/get.dart';

import '../../features/login/controllers/log_in_controller.dart';
import '../../features/splash/controller/splash_controller.dart';
import '../../them_controller/them_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<LoginController>(() => LoginController(), fenix: true,);
     Get.lazyPut<ThemeController>(() => ThemeController(), fenix: true,);
     Get.lazyPut<SplashController>(() => SplashController(), fenix: true,);



  }
}