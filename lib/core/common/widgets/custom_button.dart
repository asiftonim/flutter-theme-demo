import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../utils/constants/app_colors.dart';
import 'CustomText.dart';


class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  final Color? color;
  final Color? borderColor;
  final Color? textColor;
  final double? borderRadius;
  final double? fontSize;
  final FontWeight? fontWeight;
  final double? verticalPadding;

  const CustomButton({
    Key? key,
    required this.text,
    required this.onTap,
    this.color,
    this.borderColor,
    this.textColor,
    this.borderRadius,
    this.fontSize,
    this.fontWeight,
    this.verticalPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: color ?? AppColors.primary,
          borderRadius: BorderRadius.circular(borderRadius ?? 50.r),
          border: Border.all(
            color: borderColor ?? AppColors.primary,
            width: 1,
          ),
        ),
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: verticalPadding ?? 15.h,
            ),
            child: CustomText(
              text: text,
              fontSize: fontSize ?? 16.sp,
              fontWeight: fontWeight ?? FontWeight.w600,
              color: textColor ?? Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}