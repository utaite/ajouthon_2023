import 'package:get/get.dart';

const String url = 'https://ajouthon2023.jollyrock-baa25231.koreacentral.azurecontainerapps.io';

class Api extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient
      ..errorSafety = false
      ..timeout = const Duration(seconds: 30);
  }
}
