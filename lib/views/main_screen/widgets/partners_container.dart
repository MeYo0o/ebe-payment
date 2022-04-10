import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/core/partners_list.dart';
import 'package:ebe_payment/core/screen_sizes.dart';
import 'package:ebe_payment/views/common_widgets/gap_height.dart';
import 'package:ebe_payment/views/common_widgets/texts/custom_header_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PartnersContainer extends StatelessWidget {
  const PartnersContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomHeaderText(
            text: 'Our Partners',
            fontSize: 40.sp,
          ),
          const GapHeight(10),
          GetBuilder<MainController>(
            // tag: 'partnerAnimTag',
            init: Get.find<MainController>(),
            builder: (msc) {
              return GridView(
                shrinkWrap: true,
                primary: false,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: kCurrentSize(context) > kDesktop ? 4 : 2,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  // childAspectRatio: 3 / 2,
                ),
                children: kPartnersList
                    .map(
                      (partner) => AnimatedOpacity(
                        duration: const Duration(milliseconds: 1000),
                        opacity: msc.partnerAnimValue,
                        curve: Curves.easeIn,
                        child: Container(
                          margin: const EdgeInsets.only(right: 10),
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.black54,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.black.withOpacity(0.1),
                                blurRadius: 10,
                                offset: const Offset(0, 5),
                              ),
                            ],
                          ),
                          alignment: Alignment.center,
                          child: Text(
                            partner,
                            style: TextStyle(
                              fontSize: 50.sp,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    )
                    .toList(),
              );
            },
          ),
        ],
      ),
    );
  }
}
