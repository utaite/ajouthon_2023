import 'package:get/get.dart';

import 'keyword_page_controller.dart';
import 'keyword_page_model.dart';

class KeywordPageBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<KeywordPageController>(
      KeywordPageController(
        model: KeywordPageModel.dummy(),
      ),
    );
  }
}
