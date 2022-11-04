import 'package:flutter/material.dart';
import 'package:app_login/demo_login.dart';
import 'package:app_login/home_app.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Đăng Nhập',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: DemoLogin(),
    );
  }
}

