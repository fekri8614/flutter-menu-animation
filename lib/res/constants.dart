import 'dart:math';

import 'package:flutter/material.dart';

class Constants {
  const Constants._();

  static const animationDuration1 = Duration(milliseconds: 400);

  static double randomBorderRadius() {
    return Random().nextDouble() * 64;
  }

  static double randomMargin() {
    return Random().nextDouble() * 64;
  }

  static Color randomColor() {
    return Color(0xFFFFFFFF & Random().nextInt(0xFFFFFFFF));
  }

}
