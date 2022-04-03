import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MiddleHeading extends StatelessWidget {
  const MiddleHeading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      'Payments infrastructure for the internet',
      style: TextStyle(
        fontSize: 150.sp,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
