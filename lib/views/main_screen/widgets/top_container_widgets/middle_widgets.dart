import 'package:ebe_payment/core/screen_sizes.dart';
import 'package:ebe_payment/views/common_widgets/gap_height.dart';
import 'package:ebe_payment/views/common_widgets/gap_width.dart';
import 'package:ebe_payment/views/common_widgets/meyo_button.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets/middle_left/middle_body.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets/middle_left/middle_heading.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets/middle_right/middle_right_art.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'middle_widgets/middle_left/middle_start_contact.dart';

class MiddleContainer extends StatelessWidget {
  const MiddleContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 210,
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
                      GapHeight(20),
                    ],
                  ),
                ),
                Expanded(
                  child: MiddleRightArt(),
                ),
              ],
            )
          : Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                MiddleHeading(),
                GapHeight(20),
                SizedBox(height: 300, child: MiddleRightArt()),
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
