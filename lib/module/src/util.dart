import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'extension.dart';
import 'routes.dart';

DateTime get now => DateTime.now();

R? argument<R>({Map? T, String? tag}) => (T ?? Get.arguments as Map?)?[tag ?? R] is R ? ((T ?? Get.arguments) as Map)[tag ?? R] : null;

List<R>? arguments<R>({Map? T, String? tag}) =>
    (T ?? Get.arguments as Map?)?[tag ?? <R>[].runtimeType] is List<R> ? ((T ?? Get.arguments) as Map)[tag ?? <R>[].runtimeType] : null;

Map<K, V>? argumentMap<K, V>({Map? T, String? tag}) =>
    (T ?? Get.arguments as Map?)?[tag ?? <K, V>{}.runtimeType] is Map<K, V> ? ((T ?? Get.arguments) as Map)[tag ?? <K, V>{}.runtimeType] : null;

int get randomInt => getRandomInt(4294967296);

int getRandomInt(int length) => math.Random().nextInt(length);

Route? onGenerateRoute(RouteSettings settings, {Iterable<dynamic>? arguments}) {
  final self = Routes.values.where((x) => '/${x.name}' == settings.name).firstOrNull;

  if (self is Routes) {
    return GetPageRoute(
      settings: RouteSettings(
        name: settings.name,
        arguments: Map.from({
          ...?Get.arguments,
          ...?settings.arguments as dynamic,
          ...arguments.withType(),
        }),
      ),
      page: (self.entry?.key).elvis,
      binding: self.entry?.value,
    );
  }

  return null;
}
