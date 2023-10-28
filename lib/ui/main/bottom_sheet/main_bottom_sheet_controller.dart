import 'package:url_launcher/url_launcher.dart';

import '../../../module/module.dart';
import 'main_bottom_sheet_model.dart';

class MainBottomSheetController extends GetController<MainBottomSheetModel> {
  MainBottomSheetController({
    required MainBottomSheetModel model,
  }) : super(model);

  final Rx<int> index = 0.obs;

  @override
  void onClose() {
    index.close();
    super.onClose();
  }

  void onChangedPage(int index) {
    this.index.value = index;
  }

  void onPressedClose() {
    if (Get.isBottomSheetOpen.elvis) {
      Get.back();
    }
  }

  Future<void> onPressedButton() async {
    await launchUrl(
      Uri.parse(state.url),
    );
  }
}
