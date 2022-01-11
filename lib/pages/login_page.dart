import 'package:flutter/material.dart';
import 'package:intro/utils/routes.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String name = "";
  bool changeBtn = false;

  goToHome(BuildContext context) async {
    if (!_formKey.currentState!.validate()) {
      return;
    }
    setState(() {
      changeBtn = true;
    });
    await Future.delayed(Duration(milliseconds: 1010));
    await Navigator.pushNamed(context, MyRoutes.homeRoute);
    setState(() {
      changeBtn = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Column(
        children: [
          Image.asset("assets/images/login_img.png"),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome $name",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 42.0),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  TextFormField(
                      decoration: InputDecoration(
                          hintText: "Enter Name", labelText: "Username"),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Username can't be empty";
                        }
                        return null;
                      },
                      onChanged: (value) {
                        name = value;
                        setState(() {});
                      }),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                    validator: (value) {
                      if (value != null && value.isEmpty) {
                        return "Password can't be empty :(";
                      }
                      if (value != null && value.length < 3) {
                        return "Password must be greater than 3.";
                      }
                    },
                  ),
                  SizedBox(
                    height: 40.0,
                  ),
                  InkWell(
                    onTap: () => goToHome(context),
                    child: AnimatedContainer(
                      duration: Duration(seconds: 1),
                      width: changeBtn ? 50 : 150,
                      height: 40,
                      // color: Colors.deepPurple,
                      alignment: Alignment.center,
                      child: changeBtn
                          ? Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : Text(
                              "Login",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 18),
                            ),
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius:
                              BorderRadius.circular(changeBtn ? 50 : 7)),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
