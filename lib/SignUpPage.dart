import 'package:flutter/material.dart';
import 'package:sign_up_login/ColorPalete.dart';
import 'package:sign_up_login/main.dart';

import 'Custominput.dart';
import 'CustomButton.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            leading: IconButton(
              // ignore: prefer_const_constructors
              color: ColorPalete().color1,
              icon: Icon(Icons.arrow_back_rounded),
              onPressed: () {
                Navigator.pop(
                    context); // Navigate back when the back button is pressed
              },
            ),
          ),
          body: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Text(
                    "Sign Up.",
                    style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                      color: ColorPalete().color1,
                    ),
                  ),
                  Column(
                    children: [
                      CInput(
                          name: "new account name",
                          hintText: "name",
                          obscureText: false),
                      CInput(
                          name: "Gmail", hintText: "Gmail", obscureText: false),
                      CInput(
                          name: "password",
                          hintText: "name",
                          obscureText: true),
                      CInput(
                          name: "confirm Password",
                          hintText: "name",
                          obscureText: true),
                    ],
                  ),
                  CustomButton(
                      widget: LandingPage(),
                      title: "sign Up",
                      bgcolor: ColorPalete().color1,
                      titlecolor: Colors.white),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account ? ",
                          style: TextStyle(
                            color: const Color.fromARGB(255, 162, 161, 161),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            'login ',
                            style: TextStyle(
                              color: ColorPalete().color1,
                              decoration: TextDecoration.underline,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
