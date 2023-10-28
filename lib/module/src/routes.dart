import 'package:get/get.dart';

import '../../ui/keyword/keyword_page.dart';
import '../../ui/keyword/keyword_page_binding.dart';
import '../../ui/main/main_page.dart';
import '../../ui/main/main_page_binding.dart';
import 'extension.dart';

enum Routes {
  empty,
  keyword,
  main,
}

final Map<Routes, MapEntry<WidgetFunc, Bindings?>> pages = {
  Routes.main: MapEntry(() => const MainPage(), MainPageBinding()),
  Routes.keyword: MapEntry(KeywordPage.new, KeywordPageBinding()),
};
