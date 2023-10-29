import '../../module/module.dart';
import 'keyword_page_model.dart';

class KeywordPageController extends GetController<KeywordPageModel> {
  KeywordPageController({
    required KeywordPageModel model,
  }) : super(model);

  void onChangedText(String text) {
    change(
      state.copyWith(
        text: text,
      ),
    );
  }

  void onPressedButton() {
    if (state.keywords.contains(state.text)) {
      Get.snackbar('title', 'message');
    } else {
      change(
        state.copyWith(
          keywords: [...state.keywords, state.text],
        ),
      );
    }
  }

  void onSelectedButton(String keyword) {
    if (state.keywords.contains(keyword)) {
      change(
        state.copyWith(
          keywords: state.keywords.where((x) => x != keyword),
        ),
      );
    } else {
      change(
        state.copyWith(
          keywords: [...state.keywords, keyword],
        ),
      );
    }
  }

  void onDeleteButton(String keyword) {
    change(
      state.copyWith(
        keywords: state.keywords.where((x) => x != keyword),
      ),
    );
  }
}
