import 'package:flutter/material.dart';

class ScreenConfig {
  static double? deviceWidth;
  static double? deviceHeight;
  static double designHeight = 1300;
  static double designWidth = 600;
  static init(BuildContext context) {
    deviceWidth = MediaQuery.of(context).size.width;
    deviceHeight = MediaQuery.of(context).size.height;
  }

  static double getProportionalHeight(height) {
    return designHeight * height / designHeight;
  }

  static double getProportionalWidth(width) {
    return designWidth * width / designWidth;
  }
}

const iPrimaryColor = Color(0xFFf9fcff);
const iAccentColor = Color(0xFFffb44b);
