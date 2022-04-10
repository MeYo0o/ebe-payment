import 'package:ebe_payment/core/screen_sizes.dart';
import 'package:ebe_payment/views/common_widgets/texts/custom_explain_body_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleBody extends StatelessWidget {
  const MiddleBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: kCurrentSize(context) < kDesktop ? null : 300.w,
      child: CustomExplainBodyText(
        text:
            'Millions of companies of all sizes—from startups to Fortune 500s—use Stripe’s software and APIs to accept payments, send payouts, and manage their businesses online.',
        fontSize: 35.sp,
      ),
    );
  }
}
