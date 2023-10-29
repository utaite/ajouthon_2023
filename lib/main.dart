import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

import 'app/app.dart';
import 'app/app_controller.dart';
import 'app/app_model.dart';
import 'module/module.dart';

const Map<TargetPlatform, FirebaseOptions> options = {
  TargetPlatform.android: FirebaseOptions(
    apiKey: 'AIzaSyDttco1bb2vPKR0AxLyXvritOq7vsmNNow',
    appId: '1:432753470502:android:98396bf1e649cd8e800ae7',
    messagingSenderId: '432753470502',
    projectId: 'ajouthon-2023',
    storageBucket: 'ajouthon-2023.appspot.com',
  ),
  TargetPlatform.iOS: FirebaseOptions(
    apiKey: 'AIzaSyAP5OVPwoSnm-UcHdbaCw5-HhD_Z2I86_0',
    appId: '1:14922709203:ios:6b5463fe9bd5ae36c7bc26',
    messagingSenderId: '14922709203',
    projectId: 'clickless-dtx',
    storageBucket: 'clickless-dtx.appspot.com',
    iosClientId: '14922709203-ha1g7k658nihu6ero911hevm4vfqaaal.apps.googleusercontent.com',
    iosBundleId: 'com.beyondmedicine.clickless.dtx',
  ),
};

final FlutterLocalNotificationsPlugin _notificationPlugin = FlutterLocalNotificationsPlugin();

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: options[defaultTargetPlatform]);
  await setupFlutterNotifications();
  await showFlutterNotification(message);
}

Future<void> setupFlutterNotifications() async {
  await FirebaseMessaging.instance.subscribeToTopic('test');
  await FirebaseMessaging.instance.requestPermission(announcement: true, carPlay: true, criticalAlert: true, provisional: true);
  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(alert: true, badge: true, sound: true);

  const notificationSettings = InitializationSettings(
    android: AndroidInitializationSettings('@mipmap/ic_launcher'),
    iOS: DarwinInitializationSettings(),
  );
  final isNotification = await _notificationPlugin.initialize(notificationSettings);
  if (isNotification.elvis) {
    final androidNotificationPlugin = _notificationPlugin.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>();
    const notificationChannel = AndroidNotificationChannel(
      'high_importance_channel',
      'High Importance Notifications',
      importance: Importance.max,
    );
    await androidNotificationPlugin?.createNotificationChannel(notificationChannel);
  }
}

Future<void> showFlutterNotification(RemoteMessage message) async {
  final notification = message.notification;
  if (notification is RemoteNotification && notification.android is AndroidNotification && (Platform.isAndroid || Platform.isIOS)) {
    await _notificationPlugin.show(
      0,
      notification.title,
      notification.body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'high_importance_channel',
          'High Importance Notifications',
          importance: Importance.max,
          priority: Priority.high,
          styleInformation: BigTextStyleInformation(''),
        ),
        iOS: DarwinNotificationDetails(),
      ),
    );
  }
}

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: options[defaultTargetPlatform]);
  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  FirebaseMessaging.onMessage.listen(showFlutterNotification);
  if (Platform.isAndroid || Platform.isIOS) {
    await setupFlutterNotifications();
  }
  WidgetsFlutterBinding.ensureInitialized();
  await clear();

  Get.put<AppController>(
    AppController(
      model: AppModel.empty().copyWith(
        keywords: await getPrefStringList(PrefType.keywords),
      ),
    ),
  );
  runApp(const App());
}
