import 'package:url_launcher/url_launcher.dart';

import '../../../model/program/program_model.dart';
import '../../../module/module.dart';

class MainBottomSheetController extends GetController<ProgramModel> {
  MainBottomSheetController({
    required ProgramModel model,
  }) : super(model);

  final Rx<int> index = 0.obs;

  @override
  void onClose() {
    index.close();
    super.onClose();
  }

  // ignore: use_setters_to_change_properties
  void onChangedPage(int i) {
    index.value = i;
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
