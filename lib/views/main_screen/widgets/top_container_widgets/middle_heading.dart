import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleHeading extends StatelessWidget {
  const MiddleHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 600,
      width: 400.w,
      margin: EdgeInsets.only(top: 160, left: 20, right: 20),
      child: Text(
        'Payments infrastructure for the internet',
        style: TextStyle(
          fontSize: 100.sp,
          fontWeight: FontWeight.bold,
          color: Colors.black.withOpacity(0.70),
        ),
      ),
    );
  }
}
