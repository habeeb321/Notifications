import 'package:flutter/material.dart';
import 'package:notifications/home_screen/home_screen.dart';
import 'package:notifications/service/notification_helper.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  NotificationHelper.initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
