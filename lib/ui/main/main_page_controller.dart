import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:label_marker/label_marker.dart';

import '../../module/module.dart';
import 'bottom_sheet/main_bottom_sheet.dart';
import 'bottom_sheet/main_bottom_sheet_binding.dart';
import 'bottom_sheet/main_bottom_sheet_controller.dart';
import 'main_page_model.dart';
import 'main_page_repository.dart';

class MainPageController extends GetController<MainPageModel> {
  MainPageController({
    required MainPageModel model,
    required this.repository,
  }) : super(model);

  final MainPageRepository repository;

  @override
  Future<void> onInit() async {
    super.onInit();
    final alerts = await repository.getAlerts(
      deviceToken: (await FirebaseMessaging.instance.getToken()).elvis,
    );
    final labelMarkers = [
      ...alerts.alertsWithDetails.map(
        (x) => LabelMarker(
          onTap: () async {
            MainBottomSheetBinding(
              model: x,
            ).dependencies();
            await Get.bottomSheet(
              const MainBottomSheet(),
              isScrollControlled: true,
            );
            await Get.delete<MainBottomSheetController>();
          },
          label: '[${x.keyword}] ${x.title}\n${x.dateTime.dateAndTime}',
          markerId: MarkerId(randomInt.toString()),
          position: LatLng(x.latitude, x.longitude),
          backgroundColor: UI.colors[x.keyword].elvis,
        ),
      ),
    ];
    final markers = await Future.wait(labelMarkers.map(toMarker));

    change(
      state.copyWith(
        markers: markers.toSet(),
      ),
    );
  }

  Future<Marker> toMarker(LabelMarker labelMarker) async => Marker(
        markerId: labelMarker.markerId,
        position: labelMarker.position,
        icon: await createCustomMarkerBitmap(
          labelMarker.label,
          backgroundColor: labelMarker.backgroundColor,
          textStyle: labelMarker.textStyle,
        ),
        alpha: labelMarker.alpha,
        anchor: labelMarker.anchor,
        consumeTapEvents: labelMarker.consumeTapEvents,
        draggable: labelMarker.draggable,
        flat: labelMarker.flat,
        infoWindow: labelMarker.infoWindow,
        rotation: labelMarker.rotation,
        visible: labelMarker.visible,
        zIndex: labelMarker.zIndex,
        onTap: labelMarker.onTap,
        onDragStart: labelMarker.onDragStart,
        onDrag: labelMarker.onDrag,
        onDragEnd: labelMarker.onDragEnd,
      );
}
