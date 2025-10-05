import 'package:dark_mood_effect/routes/app_routes.dart';
import 'package:dark_mood_effect/them_controller/them_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'core/bindings/controller_binder.dart';
import 'core/utils/theme/theme.dart';


class PlatformUtils {
  static bool get isIOS =>
      foundation.defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isAndroid =>
      foundation.defaultTargetPlatform == TargetPlatform.android;
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeController themeController = Get.put(ThemeController());

    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (_, __) {
        return Obx(() {
          return GetMaterialApp(
            debugShowCheckedModeBanner: false,
            initialRoute: AppRoute.init,
            getPages: AppRoute.routes,
            initialBinding: ControllerBinder(),
            theme: _getLightTheme(),
            darkTheme: _getDarkTheme(),
            themeMode: themeController.themeMode.value,
            defaultTransition: PlatformUtils.isIOS
                ? Transition.cupertino
                : Transition.fade,
            locale: Get.deviceLocale,
          );
        });
      },
    );
  }

  ThemeData _getLightTheme() => AppTheme.lightTheme;
  ThemeData _getDarkTheme() => AppTheme.darkTheme;
}
