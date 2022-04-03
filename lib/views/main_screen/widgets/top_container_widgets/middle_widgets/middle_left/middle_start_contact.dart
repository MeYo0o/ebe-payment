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
        MeyoButton(text: 'Start Now'),
        GapWidth(20),
        TextButton(
          onPressed: () {},
          child: Text('Contact Sales >'),
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
