import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../common_widgets/gap_width.dart';
import '../../../../../common_widgets/meyo_button.dart';

class MiddleStartContact extends StatelessWidget {
  const MiddleStartContact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const MeyoButton(text: 'Start Now'),
        const GapWidth(20),
        TextButton(
          onPressed: () {},
          child: const Text('Contact Sales >'),
          style: TextButton.styleFrom(
            primary: Colors.black,
            textStyle: TextStyle(
              fontSize: 30.sp,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
