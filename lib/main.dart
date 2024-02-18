import 'package:dirbbox/pages/change_password.dart';
import 'package:dirbbox/pages/home.dart';
import 'package:dirbbox/pages/login.dart';
import 'package:dirbbox/pages/profile.dart';
import 'package:dirbbox/pages/settings.dart';
import 'package:dirbbox/pages/storage_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: const LoginPage(),
        initialRoute: '/login',
        routes: {
          '/login': (context) => const LoginPage(),
          '/home': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
          '/profile': (context) => const ProfilePage(),
          '/storage-details': (context) => StorageDetailsPage(),
          '/change-password': (context) => ChangePasswordPage()
        });
  }
}
