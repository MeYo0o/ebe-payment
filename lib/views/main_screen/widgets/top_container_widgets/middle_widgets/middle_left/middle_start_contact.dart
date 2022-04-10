import 'package:ebe_payment/views/common_widgets/buttons/custom_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/constants.dart';
import '../../../../../common_widgets/buttons/custom_elevated_button.dart';
import '../../../../../common_widgets/gap_width.dart';

class MiddleStartContact extends StatelessWidget {
  const MiddleStartContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        MeyoButton(
          text: 'Start Now >',
          fontSize: 25.sp,
          widthPadding: 10,
        ),
        const GapWidth(20),
        CustomTextButton(
          text: 'Contact Sales >',
          textColor: kExplainBodyText,
          fontSize: 30.sp,
          fontWeight: FontWeight.w600,
        ),
        // TextButton(
        //   onPressed: () {},
        //   child: const Text('Contact Sales >'),
        //   style: TextButton.styleFrom(
        //     primary: Colors.black,
        //     textStyle: TextStyle(
        //       fontSize: 30.sp,
        //       color: Colors.black,
        //       fontWeight: FontWeight.bold,
        //     ),
        //   ),
        // ),
      ],
    );
  }
}
