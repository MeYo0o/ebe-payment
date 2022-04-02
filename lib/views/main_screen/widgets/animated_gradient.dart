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
    kPrimaryColor.withOpacity(0.5), kSecondaryColor.withOpacity(0.5), kAccentColor.withOpacity(0.5),
    kSecondaryColor.withOpacity(0.5),
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
  Color topColor = kPrimaryColor.withOpacity(0.5);
  Color bottomColor = kSecondaryColor.withOpacity(0.5);
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
            bottomColor = kPrimaryColor.withOpacity(0.5);
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedContainer(
            duration: const Duration(seconds: 2),
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
                    begin: begin, end: end, colors: [bottomColor.withOpacity(0.5), topColor.withOpacity(0.5)])),
          ),
          // Positioned.fill(
          //   child: IconButton(
          //     icon: const Icon(Icons.play_arrow),
          //     onPressed: () {
          //       setState(() {
          //         bottomColor = Colors.blue;
          //       });
          //     },
          //   ),
          // )
        ],
      ),
    );
  }
}
