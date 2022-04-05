import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MainController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    // runPartnersAnimations();
    mainScrollerController.addListener(_scrollListener);
  }

  @override
  void dispose() {
    mainScrollerController.removeListener(_scrollListener);
    super.dispose();
  }

  void _scrollListener() {
    // debugPrint(mainScrollerController.offset.toString());
    // debugPrint(mainScrollerController.position.toString());
    // debugPrint(mainScrollerController.position.pixels.toString());
    //Detect Top
    // if (mainScrollerController.offset <=
    //     mainScrollerController.position.minScrollExtent &&
    //     !mainScrollerController.position.outOfRange) {
    //   print('i am at the top!');
    // }
    //Detect Bottom
    // if (mainScrollerController.offset >=
    //         mainScrollerController.position.maxScrollExtent &&
    //     !mainScrollerController.position.outOfRange) {
    //   print('i am at the bottom!');
    // }
    //partnersAnimationController

    if (mainScrollerController.offset >=
        mainScrollerController.position.maxScrollExtent * 0.5) {
      runPartnersAnimations();
    } else {
      partnerAnimRunning = false;
      partnerAnimDuration = 0;
      update();
    }
  }

  final mainScaffoldKey = GlobalKey<ScaffoldState>();
  final mainPopupMenuKey = GlobalKey<PopupMenuButtonState>();
  final ScrollController mainScrollerController = ScrollController();
  double partnerAnimDuration = 0;
  bool partnerAnimRunning = false;

  void runPartnersAnimations() async {
    if (!partnerAnimRunning) {
      debugPrint('runPartnersAnimations');
      partnerAnimRunning = true;
      partnerAnimDuration = 1.0;
      update();
    }
  }
}
