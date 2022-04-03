import 'package:ebe_payment/controllers/main_screen/main_controller.dart';
import 'package:ebe_payment/views/common_widgets/app_drawer.dart';
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
        drawer: const AppDrawer(),
        endDrawer: const AppDrawer(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: const [
              TopContainer(),
              Divider(thickness: 5),
              PartnersContainer(),
            ],
          ),
        ));
  }
}
