import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../module/module.dart';

class MainPageModel extends GetModel {
  const MainPageModel({
    required this.markers,
  });

  factory MainPageModel.empty() => _empty;

  final Set<Marker> markers;

  static const MainPageModel _empty = MainPageModel(
    markers: {},
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  MainPageModel copyWith({
    Set<Marker>? markers,
  }) =>
      MainPageModel(
        markers: markers ?? this.markers,
      );

  @override
  List<Object?> get props => [markers];

  @override
  String toString() => 'markers: $markers';
}
