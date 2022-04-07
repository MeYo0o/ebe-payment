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
    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _animatedRightPos = 125.w;
    });
  }

  @override
  Widget build(BuildContext context) {
    return kCurrentSize(context) > kDesktop
        ? AnimatedPositioned(
            duration: const Duration(milliseconds: 500),
            top: 175,
            //animate for right
            right: _animatedRightPos,
            child: Container(
              height: 400,
              alignment: Alignment.center,
              // color: Colors.black38,
              child: Image.asset('assets/images/mobile-layout.png'),
            ),
          )
        //if not desktop , just return empty space
        : const SizedBox();
  }
}
