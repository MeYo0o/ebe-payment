import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/views/main_screen/widgets/partners_container.dart';
import 'package:ebe_payment/views/main_screen/widgets/top_container.dart';
import 'package:flutter/material.dart';
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
        child: Scrollbar(
          controller: msc.mainScrollerController,
          // thickness: 3,
          // isAlwaysShown: true,
          //! enable from here
          child: ListView.builder(
            //   primary: true,
            shrinkWrap: true,
            cacheExtent: 300,
            controller: msc.mainScrollerController,
            physics: const BouncingScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return const [
                TopContainer(),
                Divider(
                  thickness: 5,
                  indent: 20,
                  endIndent: 20,
                ),
                PartnersContainer(),
              ][index];
            },
          ),
        ),
      ),
    );
  }
}
