import 'package:get/get.dart';

import 'keyword_page_controller.dart';
import 'keyword_page_model.dart';

class KeywordPageBinding extends Bindings {
  @override
  void dependencies() {
    final recommendKeywords = ['운동', '축제', '헬스', '금융', '개발', '공부', '모임', '과제', '편집', '수학'];

    Get.put<KeywordPageController>(
      KeywordPageController(
        model: KeywordPageModel.empty().copyWith(
          recommendKeywords: recommendKeywords,
        ),
      ),
    );
  }
}
