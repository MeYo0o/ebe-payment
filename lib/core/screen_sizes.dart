import 'package:flutter/material.dart';

const int kMobile = 500;
const int kLargeMobile = 700;
const int kTablet = 855;
const int kDesktop = 1024;

double kCurrentSize(BuildContext context) {
  return MediaQuery.of(context).size.width;
}
