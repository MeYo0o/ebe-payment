import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/core/constants.dart';
import 'package:ebe_payment/core/respnsive.dart';
import 'package:ebe_payment/views/main_screen/widgets/animated_gradient.dart';
import 'package:ebe_payment/views/meyo_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:hovering/hovering.dart';

import '../../common_widgets/gap_width.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipPath(
          clipper: WaveClipperTwo(),
          clipBehavior: Clip.antiAlias,
          child: const SizedBox(
            height: 500,
            width: double.infinity,
            child: AnimatedGradient(),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 15,
            bottom: 10,
            left: 60.w,
            right: 60.w,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/images/ebe-logo.png',
                width: 200,
              ),
              if (Responsive.isDesktop(context)) ...[
                Row(
                  children: [
                    ...List.generate(
                      kMobileMenuList.length,
                      (index) => TextButton(
                        onPressed: () {},
                        child: Text(
                          kMobileMenuList[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const MeyoButton(text: 'Sign In'),
              ] else ...[
                MouseRegion(
                  onHover: (hover) {
                    final mc = Get.find<MainController>();
                    mc.mainPopupMenuKey.currentState!.showButtonMenu();
                  },
                  onExit: (exit) {},
                  child: PopupMenuButton(
                    key: Get.find<MainController>().mainPopupMenuKey,
                    icon: const Icon(Icons.menu),
                    offset: const Offset(0, 40),
                    itemBuilder: (context) => kMobileMenuList
                        .map(
                          (item) => PopupMenuItem(
                            value: item,
                            child: Text(item),
                          ),
                        )
                        .toList()
                      ..add(
                        const PopupMenuItem(
                          value: '',
                          child: MeyoButton(text: 'Sign In'),
                        ),
                      ),
                  ),
                ),
              ],
            ],
          ),
        ),
      ],
    );
  }
}
