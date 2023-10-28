import 'package:flutter/material.dart';

import '../../../module/module.dart';

class MainBottomSheetModel extends GetModel {
  const MainBottomSheetModel({
    required this.keyword,
    required this.title,
    required this.images,
    required this.dateTime,
    required this.place,
    required this.color,
    required this.url,
  });

  factory MainBottomSheetModel.empty() => _empty;

  final String keyword;
  final String title;
  final Iterable<String> images;
  final DateTime dateTime;
  final String place;
  final Color color;
  final String url;

  static final MainBottomSheetModel _empty = MainBottomSheetModel(
    keyword: '',
    title: '',
    images: const Iterable.empty(),
    dateTime: DateTime.now(),
    place: '',
    color: Colors.transparent,
    url: '',
  );

  @override
  bool get isEmpty => this == _empty;

  @override
  MainBottomSheetModel copyWith({
    String? keyword,
    String? title,
    Iterable<String>? images,
    DateTime? dateTime,
    String? place,
    Color? color,
    String? url,
  }) =>
      MainBottomSheetModel(
        keyword: keyword ?? this.keyword,
        title: title ?? this.title,
        images: images ?? this.images,
        dateTime: dateTime ?? this.dateTime,
        place: place ?? this.place,
        color: color ?? this.color,
        url: url ?? this.url,
      );

  @override
  List<Object?> get props => [keyword, title, images, dateTime, place, color, url];

  @override
  String toString() => 'keyword: $keyword title: $title images: $images dateTime: $dateTime place: $place color: $color url: $url';
}
