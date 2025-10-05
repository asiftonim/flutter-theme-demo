import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../../them_controller/them_controller.dart';
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:EdgeInsets.symmetric(horizontal: 20.0.w),
          child: Center(
            child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      icon: Icon(Icons.brightness_6),
                      onPressed: () {
                        Get.find<ThemeController>().toggleTheme();
                      },
                    )
                  ],
                ),Spacer(),
                Text(
                  "Dark & Light Mood",
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.w800,
                    fontSize: 20.sp,
                  ),
                ),
                SizedBox(height: 400.h,)
              ],
            ),
          ),
        ),
      ),

    );
  }
}
