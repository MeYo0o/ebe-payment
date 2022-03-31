import 'package:flutter/material.dart';

class GapHeight extends StatelessWidget {
  const GapHeight(this.height, {Key? key}) : super(key: key);
  final double height;

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: height);
  }
}
