

// Flutter imports:
import 'package:flutter/material.dart';

Color getColor(String rgb){
  var colorsRgb = rgb.split(',');
  return Color.fromRGBO(int.parse(colorsRgb[0]), int.parse(colorsRgb[1]), int.parse(colorsRgb[2]), 1);
}
