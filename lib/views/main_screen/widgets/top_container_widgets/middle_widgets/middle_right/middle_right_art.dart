import 'package:flutter/material.dart';

class MiddleRightArt extends StatelessWidget {
  const MiddleRightArt({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        height: 400,
        alignment: Alignment.center,
        color: Colors.black38,
        child: Text('EBE - Payment Design Art'),
      ),
    );
  }
}
