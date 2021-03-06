import 'package:ebe_payment/core/constants.dart';
import 'package:flutter/material.dart';

class AnimatedGradient extends StatefulWidget {
  const AnimatedGradient({Key? key}) : super(key: key);

  @override
  _AnimatedGradientState createState() => _AnimatedGradientState();
}

class _AnimatedGradientState extends State<AnimatedGradient> {
  List<Color> colorList = [
    // Colors.red,
    // Colors.blue,
    // Colors.green,
    // Colors.yellow
    kPrimaryColor,
    kSecondaryColor,
    kAccentColor,
  ];
  List<Alignment> alignmentList = [
    Alignment.bottomLeft,
    Alignment.bottomRight,
    Alignment.topRight,
    Alignment.topLeft,
  ];
  int index = 0;
  // Color bottomColor = Colors.red;
  // Color topColor = Colors.yellow;
  Color topColor = kPrimaryColor;
  Color bottomColor = kSecondaryColor;
  Alignment begin = Alignment.bottomLeft;
  Alignment end = Alignment.topRight;

  @override
  void initState() {
    super.initState();
    Future.delayed(
      Duration.zero,
      () {
        setState(
          () {
            bottomColor = kPrimaryColor;
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.7,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 1500),
        onEnd: () {
          setState(() {
            index = index + 1;
            // animate the color
            bottomColor = colorList[index % colorList.length];
            topColor = colorList[(index + 1) % colorList.length];

            //// animate the alignment
            // begin = alignmentList[index % alignmentList.length];
            // end = alignmentList[(index + 2) % alignmentList.length];
          });
        },
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: begin,
            end: end,
            colors: [
              bottomColor,
              topColor,
            ],
          ),
        ),
      ),
    );
  }
}
