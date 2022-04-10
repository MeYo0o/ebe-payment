import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../texts/custom_button_text.dart';

class MeyoButton extends StatelessWidget {
  const MeyoButton({
    Key? key,
    required this.text,
    required this.fontSize,
    this.textColor,
    this.textAlign,
    this.fontWeight,
    this.containerAlignment,
    this.widthPadding,
    this.onPressed,
  }) : super(key: key);

  final String text;
  final double fontSize;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Alignment? containerAlignment;
  final Color? textColor;
  final double? widthPadding;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: widthPadding ?? 20,
          vertical: 10,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            20.r,
          ),
        ),
      ),
      child: CustomButtonText(
        text: text,
        fontSize: fontSize,
        textColor: textColor,
        fontWeight: fontWeight,
        textAlign: textAlign,
        containerAlignment: containerAlignment,
      ),
      onPressed: onPressed ?? () {},
    );
  }
}
