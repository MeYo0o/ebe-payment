import 'package:ebe_payment/views/common_widgets/gap_height.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets/middle_left/middle_body.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets/middle_left/middle_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/screen_sizes.dart';
import 'middle_widgets/middle_left/middle_start_contact.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 450,
      margin: EdgeInsets.only(
        top: 170,
        left: 20.w,
        right: 20.w,
      ),
      child: kCurrentSize(context) > kDesktop
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      MiddleHeading(),
                      GapHeight(20),
                      MiddleBody(),
                      GapHeight(20),
                      MiddleStartContact(),
                      GapHeight(60),
                    ],
                  ),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MiddleHeading(),
                GapHeight(20),
                MiddleBody(),
                GapHeight(20),
                MiddleStartContact(),
                GapHeight(20),
              ],
            ),
    );
  }
}
