import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/cliped_container.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/middle_widgets.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container_widgets/top_nav_bar.dart';
import 'package:flutter/material.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        MiddleContainer(),
        // ClippedContainer(),
        TopNavBar(),
      ],
    );
  }
}
