import 'package:flutter/material.dart';

import '../../../../models/meyo_clipper.dart';
import '../animated_gradient.dart';

class ClippedContainer extends StatelessWidget {
  const ClippedContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: MeyoClipperPath(clipHeight: 300),
      clipBehavior: Clip.antiAlias,
      child: const SizedBox(
        height: 450,
        width: double.infinity,
        child: AnimatedGradient(),
      ),
    );
  }
}
