import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButtonText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Alignment? containerAlignment;
  final Color? textColor;

  const CustomButtonText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.containerAlignment,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: GoogleFonts.poppins(
          fontSize: fontSize,
          color: textColor ?? Colors.white,
          fontWeight: fontWeight ?? FontWeight.w500,
        ),
      ),
    );
  }
}
