import 'package:ebe_payment/views/common_widgets/texts/custom_button_text.dart';
import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final Color textColor;
  final TextAlign? textAlign;
  final FontWeight? fontWeight;
  final Alignment? containerAlignment;
  final double? widthPadding;
  final void Function()? onPressed;

  const CustomTextButton({
    Key? key,
    required this.text,
    required this.fontSize,
    required this.textColor,
    this.textAlign,
    this.fontWeight,
    this.containerAlignment,
    this.onPressed,
    this.widthPadding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed ?? () {},
      child: CustomButtonText(
        text: text,
        fontSize: fontSize,
        textColor: textColor,
        fontWeight: fontWeight,
        textAlign: textAlign,
        containerAlignment: containerAlignment,
      ),
      // style: TextButton.styleFrom(
      //   primary: Colors.black,
      //   textStyle: TextStyle(
      //     fontSize: 30.sp,
      //     color: textColor ?? Colors.black,
      //     fontWeight: FontWeight.bold,
      //   ),
      // ),
    );
  }
}
