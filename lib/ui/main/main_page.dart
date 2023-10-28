import 'package:flutter/material.dart';

import '../../module/module.dart';
import 'main_page_controller.dart';

class MainPage extends GetView<MainPageController> {
  const MainPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    debugPrint('[MainPage] build: ${controller.state}');
    return WillPopScope(
      onWillPop: controller.onWillPop,
      child: Scaffold(
        body: SafeArea(
          child: controller.rx(
            (state) => CustomScrollView(
              slivers: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    UI.spacer,
                    Center(
                      child: Text('Hello, World!'),
                    ),
                    UI.spacer,
                  ],
                ).sliverFill,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
