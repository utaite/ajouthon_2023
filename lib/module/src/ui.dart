import 'package:flutter/material.dart';

import '../module.dart';

final class UI {
  static const SizedBox empty = SizedBox.shrink();
  static const Spacer spacer = Spacer();

  static const Radius radius = Radius.circular(Values.radiusValue);
  static const Radius radiusSmall = Radius.circular(Values.radiusSmallValue);
  static const Radius radiusExtraSmall = Radius.circular(Values.radiusExtraSmallValue);
  static const Radius radiusCircle = Radius.circular(Values.radiusCircleValue);

  static const BorderRadius borderRadius = BorderRadius.all(radius);
  static const BorderRadius borderRadiusSmall = BorderRadius.all(radiusSmall);
  static const BorderRadius borderRadiusExtraSmall = BorderRadius.all(radiusExtraSmall);
  static const BorderRadius borderRadiusCircle = BorderRadius.all(radiusCircle);

  static const BorderRadius borderRadiusTop = BorderRadius.only(topLeft: radius, topRight: radius);

  static const Map<String, Color> colors = {
    '행사': colorPrimary,
    '간식': Colors.blueAccent,
    '축구': Colors.deepOrange,
    '코딩': Colors.amberAccent,
    '수령안내': Colors.purpleAccent,
    '조식': Colors.lightGreen,
    '기념식': Colors.redAccent,
    '채용': Colors.blueGrey,
    '문화행사': Colors.teal,
  };
}
