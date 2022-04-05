import 'package:flutter/material.dart';

import '../views/main_screen/widgets/partners_container.dart';
import '../views/main_screen/widgets/top_container.dart';

const List<Widget> scrollableWidgetsList = [
  TopContainer(),
  Divider(
    thickness: 5,
    indent: 20,
    endIndent: 20,
  ),
  PartnersContainer(),
];
