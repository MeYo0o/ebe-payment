import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum MainScreenAnimations {
  partners,
}

class MainController extends GetxController {
  final mainScaffoldKey = GlobalKey<ScaffoldState>();
  final mainPopupMenuKey = GlobalKey<PopupMenuButtonState>();
  //scroller to maintain animations run states
  final ScrollController mainScrollerController = ScrollController();

  //---------Animations----------
  double partnerAnimValue = 0;
  bool partnerAnimRunning = false;

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

    //TODO :partnersAnimationController - done
    if (mainScrollerController.offset >=
        mainScrollerController.position.maxScrollExtent * 0.2) {
      runAnimations(MainScreenAnimations.partners);
    } else {
      stopAnimations(MainScreenAnimations.partners);
    }
  }

  void runAnimations(MainScreenAnimations mainScreenAnimations) {
    switch (mainScreenAnimations) {
      case MainScreenAnimations.partners:
        if (!partnerAnimRunning) {
          // debugPrint('Animations are running');
          partnerAnimRunning = true;
          partnerAnimValue = 1.0;
          update();
        }
        break;
    }
  }

  void stopAnimations(MainScreenAnimations mainScreenAnimations) {
    switch (mainScreenAnimations) {
      case MainScreenAnimations.partners:
        if (partnerAnimRunning) {
          // debugPrint('Animations are stopping');
          partnerAnimRunning = false;
          partnerAnimValue = 0;
          update();
        }
        break;
    }
  }
}
