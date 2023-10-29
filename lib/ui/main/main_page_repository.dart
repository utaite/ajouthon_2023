import '../../model/alert/alert_model.dart';
import '../../model/keyword_text/keyword_text_model.dart';
import '../../module/module.dart';

class MainPageRepository extends RepositoryHelper {
  Future<AlertModel> getAlerts({required String deviceToken}) async {
    final response = await super.getUserAlerts(deviceToken);
    final body = response.body;
    Get.log('userAlerts: $body');

    if (body is AlertModel && body.alertsWithDetails.isNotEmpty) {
      return body;
    }

    return AlertModel.dummy();
  }

  Future<KeywordTextModel> getKeywords({required String deviceToken}) async {
    final response = await super.getUserKeywords(deviceToken);
    final body = response.body;
    Get.log('getKeywords: $body');

    if (body is KeywordTextModel && body.keywordTexts.isNotEmpty) {
      return body;
    }

    return KeywordTextModel.dummy();
  }

  Future<String> push({required String deviceToken}) async {
    final response = await super.getPush(deviceToken);
    final body = response.body;
    Get.log('getKeywords: $body');

    return '';
  }
}
