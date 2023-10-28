import 'package:flutter/services.dart';

import '../module/module.dart';
import 'app_model.dart';

class AppController extends GetController<AppModel> {
  AppController({
    required AppModel model,
  }) : super(model);

  @override
  Future<void> onInit() async {
    super.onInit();
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }
}
