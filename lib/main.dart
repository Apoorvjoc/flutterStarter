import 'package:flutter/material.dart';
import 'package:intro/pages/home_page.dart';
import 'package:intro/pages/login_page.dart';

import 'package:google_fonts/google_fonts.dart';

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
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        // primaryTextTheme: GoogleFonts.latoTextTheme()
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
      darkTheme: ThemeData(primarySwatch: Colors.blueGrey),
      initialRoute: "/login",
      routes: {
        "/home": (context) => new HomePage(),
        "/login": (context) => LoginPage(),
      },
    );
  }
}
