import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationService{

  static final FlutterLocalNotificationsPlugin _notificationsPlugin =
  FlutterLocalNotificationsPlugin();

  static void initialize() {
    // initializationSettings  for Android
    const InitializationSettings initializationSettings =
    InitializationSettings(
      android: AndroidInitializationSettings("@mipmap/ic_launcher"),
    );

    _notificationsPlugin.initialize(
      initializationSettings,
      onSelectNotification: (String? id) async {
        print("onSelectNotification");
        if (id!.isNotEmpty) {
          print("Router Value1234 $id");
        }
      },
    );
  }

  static void notification({required String title, required String body, dynamic scheduledDate, required int id})async{
    AndroidNotificationDetails androidNotificationDetails =
        const AndroidNotificationDetails(
            "channelId",
            "channelName",
            importance: Importance.max,
            priority: Priority.high,
        );
    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);
    await _notificationsPlugin.schedule(
        id,
        title,
        body,
        scheduledDate,
        notificationDetails,
    );
  }

  static void showNotification({required String title, required String body})async{
    AndroidNotificationDetails androidNotificationDetails =
    const AndroidNotificationDetails(
      "channelId",
      "channelName",
      importance: Importance.max,
      priority: Priority.high,
    );
    NotificationDetails notificationDetails = NotificationDetails(android: androidNotificationDetails);
    await _notificationsPlugin.show(
        -1,
        title,
        body,
        notificationDetails
    );
  }

  static void stopNotification(id)async{
    _notificationsPlugin.cancel(id);
  }

}