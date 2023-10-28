import 'dart:convert';

import '../../model/alert/alert_model.dart';
import '../../model/keyword_text/keyword_text_model.dart';
import '../module.dart';

class RepositoryHelper extends GetConnect {
  @override
  void onInit() {
    super.onInit();
    httpClient
      ..errorSafety = false
      ..timeout = Values.minutes ~/ 2;
  }

  /// GET
  Future<Response<String>> getPopularKeywords() => request(
        [Url.api, Url.popular, Url.keywords].join('/'),
        'GET',
        decoder: (json) => json.toString(),
      );

  Future<Response<AlertModel>> getUserAlerts(String deviceToken) => request(
        '${[Url.api, Url.user, Url.alerts].join('/')}?deviceToken=$deviceToken',
        'GET',
        decoder: AlertModel.fromJson,
      );

  Future<Response<KeywordTextModel>> getUserKeywords(String deviceToken) => request(
        '${[Url.api, Url.user, Url.keywords].join('/')}?deviceToken=$deviceToken',
        'GET',
        decoder: KeywordTextModel.fromJson,
      );

  /// POST
  Future<Response<String>> postUserKeywords(String deviceToken, String keywordTexts) => post(
        [Url.api, Url.user, Url.keywords].join('/'),
        json.encode({
          'deviceToken': deviceToken,
          'keywordTexts': keywordTexts,
        }),
        decoder: (json) => json.toString(),
      );
}
