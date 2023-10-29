import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

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
            (state) => GoogleMap(
              initialCameraPosition: const CameraPosition(
                target: LatLng(37.2843727, 127.0443767),
                zoom: 17,
              ),
              markers: state.markers,
              myLocationEnabled: true,
            ),
          ),
        ),
      ),
    );
  }
}
