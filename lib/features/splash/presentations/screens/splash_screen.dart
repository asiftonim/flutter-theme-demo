import 'package:dark_mood_effect/core/utils/constants/app_colors.dart';
import 'package:dark_mood_effect/core/utils/constants/image_path.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../controller/splash_controller.dart';
class SplashScreen extends GetView<SplashController> {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(SplashController()); // controller inject
    return Scaffold(
      backgroundColor: Get.isDarkMode
          ? AppColors.backgroundDark
          : AppColors.backgroundLight,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Get.isDarkMode ? ImagePath.splashImageDark : ImagePath.splashImageLight,
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
