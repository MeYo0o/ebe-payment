import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/core/constants.dart';
import 'package:ebe_payment/core/respnsive.dart';
import 'package:ebe_payment/models/meyo_clipper.dart';
import 'package:ebe_payment/views/main_screen/widgets/animated_gradient.dart';
import 'package:ebe_payment/views/common_widgets/meyo_button.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/cliped_container.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_heading.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hovering/hovering.dart';

import '../../common_widgets/gap_width.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        ClippedContainer(),
        MiddleHeading(),
        TopNavBar(),
      ],
    );
  }
}
