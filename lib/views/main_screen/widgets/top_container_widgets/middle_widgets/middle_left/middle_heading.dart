import 'package:ebe_payment/views/common_widgets/texts/custom_explain_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/screen_sizes.dart';

class MiddleHeading extends StatelessWidget {
  const MiddleHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kCurrentSize(context) < kDesktop ? null : 400.w,
      child: CustomExplainHeaderText(
        text: 'Payments infrastructure for the internet',
        fontSize: 130.sp,
      ),
    );
  }
}
