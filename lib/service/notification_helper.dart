import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class NotificationHelper {
  static final notification = FlutterLocalNotificationsPlugin();

  static initNotification() {
    notification.initialize(const InitializationSettings(
      android: AndroidInitializationSettings('@mipmap/ic_launcher'),
      iOS: DarwinInitializationSettings(),
    ));
  }

  static pushNotification({
    required String title,
    required String body,
  }) async {
    AndroidNotificationDetails androidDetails =
        const AndroidNotificationDetails(
      'habeebu_channel',
      'My Channel',
      importance: Importance.max,
      priority: Priority.high,
    );

    DarwinNotificationDetails iosDetails = const DarwinNotificationDetails();

    NotificationDetails notificationDetails =
        NotificationDetails(android: androidDetails, iOS: iosDetails);

    await notification.show(100, title, body, notificationDetails);
  }
}
