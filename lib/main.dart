import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      routes: {
        "/home": (context) => new HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
