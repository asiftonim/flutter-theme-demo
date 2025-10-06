import 'package:get/get.dart';

import '../../features/login/controllers/log_in_controller.dart';

class ControllerBinder extends Bindings {
  @override
  void dependencies() {
     Get.lazyPut<LoginController>(() => LoginController(), fenix: true,);

  }
}