import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/views/common_widgets/buttons/custom_text_button.dart';
import 'package:ebe_payment/views/common_widgets/texts/custom_nav_text.dart';
import 'package:ebe_payment/views/main_screen/widgets/footer_container.dart';
import 'package:ebe_payment/views/main_screen/widgets/partners_container.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final msc = Get.find<MainController>();
    return Scaffold(
      key: msc.mainScaffoldKey,
      body: SizedBox(
        width: double.infinity,
        child: ListView.separated(
          //   primary: true,
          shrinkWrap: true,
          cacheExtent: 300,
          controller: msc.mainScrollerController,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return [
              const TopContainer(),
              const PartnersContainer(),
              //Dummy container
              Container(
                height: 800,
                color: Colors.white,
                child: Center(
                  child: CustomTextButton(
                    text: 'Data to be filled',
                    fontSize: 25.sp,
                    textColor: Colors.black,
                  ),
                ),
              ),
              const FooterContainer(),
            ][index];
          },
          separatorBuilder: (_, index) =>
              const Divider(thickness: 5, indent: 20, endIndent: 20),
        ),
      ),
    );
  }
}
