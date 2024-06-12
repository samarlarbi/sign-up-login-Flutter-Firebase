import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:sign_up_login/Account.dart';
import 'package:sign_up_login/WatingForEmailVerificationPage.dart';

import 'ColorPalete.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool test = FirebaseAuth.instance.currentUser != null &&
      FirebaseAuth.instance.currentUser!.emailVerified;

  @override
  Widget build(BuildContext context) {
    return test
        ? Scaffold(
            appBar: AppBar(
                elevation: 0.0,
                actions: [
                  IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.notifications_outlined,
                        color: ColorPalete().color1,
                      )),
                  IconButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => Account()),
                        );
                      },
                      icon: Icon(
                        Icons.person_2_outlined,
                        color: ColorPalete().color1,
                      ))
                ],
                backgroundColor: Colors.white,
                title: Text(
                  "Home Page",
                  style: TextStyle(
                    color: ColorPalete().color1,
                    fontWeight: FontWeight.w900,
                    letterSpacing: 1.2,
                    fontSize: 25.0,
                  ),
                )),
            body: Padding(padding: EdgeInsets.all(20)))
        : Verification();
  }
}

class ColorPalet {}
