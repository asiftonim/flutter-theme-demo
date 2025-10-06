import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final Color? borderColor;
  final Color? focusBorderColor;
  final Color? fillColor;
  final int maxLines;

  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.borderColor,
    this.focusBorderColor,
    this.fillColor,
    this.maxLines = 1,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {}); // Focus change হলে rebuild হবে
    });
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 🔹 Theme অনুযায়ী রঙ নির্ধারণ
    final bool isDark = Theme.of(context).brightness == Brightness.dark;

    final Color effectiveFillColor =
        widget.fillColor ?? (isDark ? Colors.black54: Colors.white);

    final Color effectiveBorderColor =
        widget.borderColor ?? (isDark ?Color(0xFF94A3B8) : const Color(0xFF94A3B8));

    final Color effectiveFocusColor =
        widget.focusBorderColor ?? (isDark ? Color(0xFFFC961A) : Color(0xFFFC961A));

    final Color effectiveTextColor =
    isDark ? Colors.grey.shade200 : const Color(0xFF1E1E1E);

    return Container(
      constraints: const BoxConstraints(minHeight: 50),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
        color: effectiveFillColor,
        border: Border.all(
          width: 1.3,
          color: _focusNode.hasFocus ? effectiveFocusColor : effectiveBorderColor,
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w),
        child: TextField(
          focusNode: _focusNode,
          controller: widget.controller,
          obscureText: widget.obscureText,
          maxLines: widget.maxLines,
          style: TextStyle(
            color: effectiveTextColor,
            fontSize: 16.sp,
          ),
          decoration: InputDecoration(
            hintText: widget.hintText,
            hintStyle: TextStyle(
              color: isDark ? Color(0xFF94A3B8) : const Color(0xFF94A3B8),
              fontSize: 15.sp,
            ),
            prefixIcon: widget.prefixIcon != null
                ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.prefixIcon,
            )
                : null,
            suffixIcon: widget.suffixIcon != null
                ? Padding(
              padding: const EdgeInsets.all(10.0),
              child: widget.suffixIcon,
            )
                : null,
            border: InputBorder.none,
            enabledBorder: InputBorder.none,
            focusedBorder: InputBorder.none,
            disabledBorder: InputBorder.none,
            isDense: true,
            contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          ),
        ),
      ),
    );
  }
}
