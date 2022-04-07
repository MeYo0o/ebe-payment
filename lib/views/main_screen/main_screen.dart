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
        child: ListView.builder(
          //   primary: true,
          shrinkWrap: true,
          cacheExtent: 300,
          controller: msc.mainScrollerController,
          physics: const BouncingScrollPhysics(),
          itemCount: 4,
          itemBuilder: (context, index) {
            return [
              const TopContainer(),
              const Divider(thickness: 5, indent: 20, endIndent: 20),
              const PartnersContainer(),
              Container(
                height: 400,
                color: Colors.blueGrey,
              ),
            ][index];
          },
        ),

        //     ListView(
        //   //   primary: true,
        //   shrinkWrap: true,
        //   controller: msc.mainScrollerController,
        //   // physics: const NeverScrollableScrollPhysics(),
        //   children: [
        //     const TopContainer(),
        //     const Divider(thickness: 5, indent: 20, endIndent: 20),
        //     const PartnersContainer(),
        //     Container(
        //       height: 1000,
        //       color: Colors.blueGrey,
        //     ),
        //   ],
        // ),
      ),
    );
  }
}
