import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../../core/screen_sizes.dart';

class MiddleLeftArt extends StatefulWidget {
  const MiddleLeftArt({Key? key}) : super(key: key);

  @override
  State<MiddleLeftArt> createState() => _MiddleLeftArtState();
}

class _MiddleLeftArtState extends State<MiddleLeftArt> {
  double _animatedTopPos = 0;

  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    await Future.delayed(const Duration(milliseconds: 1500));
    setState(() {
      _animatedTopPos = 175.5;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (kCurrentSize(context) > kDesktop) {
      return AnimatedPositioned(
        duration: const Duration(milliseconds: 1500),
        top: _animatedTopPos,
        //animate for right
        right: 180.w,
        child: Container(
          height: 400,
          alignment: Alignment.center,
          // color: Colors.black38,
          child: Image.asset('assets/images/4-min.png'),
        ),
      );
    } else {
      return const SizedBox();
    }
  }
}
