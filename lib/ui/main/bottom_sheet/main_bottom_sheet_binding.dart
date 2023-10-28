import 'package:flutter/material.dart';

import '../../../module/module.dart';
import 'main_bottom_sheet_controller.dart';
import 'main_bottom_sheet_model.dart';

class MainBottomSheetBinding extends Bindings {
  MainBottomSheetBinding({
    required this.keyword,
    required this.title,
    required this.images,
    required this.dateTime,
    required this.place,
    required this.color,
    required this.url,
  });

  final String keyword;
  final String title;
  final Iterable<String> images;
  final DateTime dateTime;
  final String place;
  final Color color;
  final String url;

  @override
  void dependencies() {
    Get.put<MainBottomSheetController>(
      MainBottomSheetController(
        model: MainBottomSheetModel.empty().copyWith(
          keyword: keyword,
          title: title,
          images: images,
          dateTime: dateTime,
          place: place,
          color: color,
          url: url,
        ),
      ),
    );
  }
}
