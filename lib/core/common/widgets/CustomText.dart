import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight fontWeight;
  final Color? color; // nullable করলাম
  final double height;
  final double letterSpacing;
  final TextAlign textAlign;

  const CustomText({
    Key? key,
    required this.text,
    this.fontSize = 16,
    this.fontWeight = FontWeight.normal,
    this.color,
    this.height = 1.5,
    this.letterSpacing = 0.0,
    this.textAlign = TextAlign.start,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // যদি color null থাকে, তাহলে Theme থেকে color নেবে
    final textColor = color ?? Theme.of(context).textTheme.bodyLarge?.color ?? Colors.black;

    return Text(
      text,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: textColor,
        height: height,
        letterSpacing: letterSpacing,
      ),
    );
  }
}
