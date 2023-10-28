import '../../../model/program/program_model.dart';
import '../../../module/module.dart';
import 'main_bottom_sheet_controller.dart';

class MainBottomSheetBinding extends Bindings {
  MainBottomSheetBinding({
    required this.model,
  });

  final ProgramModel model;

  @override
  void dependencies() {
    Get.put<MainBottomSheetController>(
      MainBottomSheetController(
        model: model,
      ),
    );
  }
}
