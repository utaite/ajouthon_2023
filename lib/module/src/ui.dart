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
    '개발': Colors.deepPurple,
    '행사': colorPrimary,
  };
}
