import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomNavText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Alignment? containerAlignment;

  const CustomNavText({
    Key? key,
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.containerAlignment,
    this.textAlign,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: containerAlignment ?? Alignment.center,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.center,
        style: GoogleFonts.poppins(
          color: Colors.white,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.w500,
        ),
      ),
    );
  }
}
