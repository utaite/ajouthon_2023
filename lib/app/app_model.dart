import 'package:flutter/material.dart';

import '../module/module.dart';

class AppModel extends GetModel {
  const AppModel({
    required this.brightness,
    required this.accessToken,
    required this.refreshToken,
  });

  factory AppModel.empty() => _empty;

  final Brightness brightness;
  final String accessToken;
  final String refreshToken;

  static const AppModel _empty = AppModel(
    brightness: Brightness.light,
    accessToken: '',
    refreshToken: '',
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  AppModel copyWith({
    Brightness? brightness,
    String? accessToken,
    String? refreshToken,
  }) =>
      AppModel(
        brightness: brightness ?? this.brightness,
        accessToken: accessToken ?? this.accessToken,
        refreshToken: refreshToken ?? this.refreshToken,
      );

  @override
  List<Object?> get props => [brightness, accessToken, refreshToken];

  @override
  String toString() => 'brightness: $brightness accessToken: $accessToken refreshToken: $refreshToken';
}
