import 'package:ebe_payment/core/screen_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../controllers/main_screen/main_controller.dart';
import '../../../../core/constants.dart';
import '../../../common_widgets/meyo_button.dart';

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
          if (kCurrentSize(context) > kTablet) ...[
            Row(
              children: [
                ...List.generate(
                  kMobileMenuList.length,
                  (index) => TextButton(
                    onPressed: () {},
                    child: Text(
                      kMobileMenuList[index],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30.sp,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const MeyoButton(text: 'Sign In'),
          ] else ...[
            GetBuilder<MainController>(
                init: Get.find<MainController>(),
                builder: (mc) {
                  return MouseRegion(
                    onHover: (hover) {
                      mc.mainPopupMenuKey.currentState!.showButtonMenu();
                    },
                    onExit: (exit) {},
                    child: PopupMenuButton(
                      key: Get.find<MainController>().mainPopupMenuKey,
                      icon: const Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
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
                  );
                }),
          ],
        ],
      ),
    );
  }
}
