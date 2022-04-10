import 'package:ebe_payment/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTitleHeaderText extends StatelessWidget {
  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Alignment? containerAlignment;

  const CustomTitleHeaderText({
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
      alignment: containerAlignment ?? Alignment.topLeft,
      child: Text(
        text,
        textAlign: textAlign ?? TextAlign.left,
        style: GoogleFonts.poppins(
          color: kPrimaryColor,
          fontSize: fontSize,
          fontWeight: fontWeight ?? FontWeight.bold,
        ),
      ),
    );
  }
}
