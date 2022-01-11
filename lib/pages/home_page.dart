import 'package:flutter/material.dart';
import 'package:intro/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog Widget"),
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to Home Page"),
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}
