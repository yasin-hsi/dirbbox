import 'package:dirbbox/pages/change_password.dart';
import 'package:dirbbox/pages/home.dart';
import 'package:dirbbox/pages/login.dart';
import 'package:dirbbox/pages/profile.dart';
import 'package:dirbbox/pages/settings.dart';
import 'package:dirbbox/pages/storage_details.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Gilroy'),
        home: LoginPage(),
        initialRoute: '/login',
        routes: {
          '/login': (context) => LoginPage(),
          '/home': (context) => HomePage(),
          '/settings': (context) => SettingsPage(),
          '/profile': (context) => ProfilePage(),
          '/storage-details': (context) => StorageDetailsPage(),
          '/change-password': (context) => ChangePasswordPage()
        });
  }
}
