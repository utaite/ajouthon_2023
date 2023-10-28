import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../model/route/route_model.dart';
import '../module/module.dart';
import 'app_controller.dart';

class App extends GetView<AppController> {
  const App({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final pages = [
      ...Routes.values.where((x) => x.entry is MapEntry<WidgetFunc, Bindings?>).map(
            (x) => GetPage(
              name: '/${x.name}',
              page: (x.entry?.key).elvis,
              binding: x.entry?.value,
            ),
          ),
    ];

    return controller.rx((state) {
      SystemChrome.setSystemUIOverlayStyle(state.brightness.statusBarStyle);

      return GetMaterialApp(
        title: '아주톤 2023',
        debugShowCheckedModeBanner: false,
        initialRoute: RouteModel.keyword().routes.name,
        getPages: pages,
        unknownRoute: pages.firstOrNull,
        themeMode: state.brightness.themeMode,
        theme: Brightness.light.theme,
        darkTheme: Brightness.dark.theme,
      );
    });
  }
}
