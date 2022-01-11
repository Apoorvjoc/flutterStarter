import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';

import 'package:intro/utils/routes.dart';
import 'package:intro/widgets/themes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: "/home",
      routes: {
        MyRoutes.homeRoute: (context) => new HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
