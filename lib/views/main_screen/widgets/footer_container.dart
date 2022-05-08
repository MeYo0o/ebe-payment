import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../common_widgets/texts/custom_nav_text.dart';

class FooterContainer extends StatelessWidget {
  const FooterContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Colors.grey[100],
      child: Center(
        child: CustomNavText(
          text: 'EBE © 2022 - All Copyrights Reserved ',
          fontSize: 15.sp,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
