import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/screen_sizes.dart';

class MiddleRightArt extends StatefulWidget {
  const MiddleRightArt({Key? key}) : super(key: key);

  @override
  State<MiddleRightArt> createState() => _MiddleRightArtState();
}

class _MiddleRightArtState extends State<MiddleRightArt> {
  double _animatedRightPos = 0;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(
      () {
        kCurrentSize(context) < kDesktop
            ? _animatedRightPos = 15.w
            : kCurrentSize(context) < 1100
                ? _animatedRightPos = 25.w
                : kCurrentSize(context) < 1250
                    ? _animatedRightPos = 40.w
                    : kCurrentSize(context) < 1300
                        ? _animatedRightPos = 50.w
                        : kCurrentSize(context) <= 1450
                            ? _animatedRightPos = 60.w
                            : kCurrentSize(context) <= 1500
                                ? _animatedRightPos = 60.w
                                : _animatedRightPos = 70.w;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (kCurrentSize(context) > kDesktop) {
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 1500),
        top: 175,
        //animate for right
        right: _animatedRightPos,
        child: Container(
          height: 400,
          alignment: Alignment.center,
          // color: Colors.black38,
          child: Image.asset('assets/images/6-min.png'),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
