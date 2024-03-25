import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:notifications/service/notification_helper.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: GFButton(
            onPressed: () {
              NotificationHelper.pushNotification(
                title: 'Habeebu Rahman ',
                body: 'This is a sample Notification',
              );
            },
            text: 'Show Notification',
          ),
        ),
      ),
    );
  }
}
