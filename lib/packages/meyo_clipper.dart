import 'package:flutter/material.dart';

class MeyoClipperPath extends CustomClipper<Path> {
  final double clipHeight;

  MeyoClipperPath({required this.clipHeight});
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height - clipHeight)
      ..lineTo(size.width, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
