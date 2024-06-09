import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
            colors: [
              Color.fromARGB(255, 1, 111, 126),
              Color.fromARGB(255, 1, 140, 158),
              Color.fromRGBO(4, 184, 208, 1),
            ],
          )),
          child: Padding(
            padding: const EdgeInsets.all(50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 300,
                ),
                Text(
                  "Welcom.",
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text("Let's Get Started!",
                    style: TextStyle(
                        color: Color.fromARGB(183, 255, 255, 255),
                        fontWeight: FontWeight.w500,
                        wordSpacing: 2,
                        letterSpacing: 1.5,
                        fontSize: 20)),
                Container(
                  padding: EdgeInsets.only(top: 40),
                  child: SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Set the border radius here
                          ),
                        ),
                        child: Text(
                          "sign up ",
                          style: TextStyle(
                            color: Color.fromARGB(255, 1, 111, 126),
                          ),
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20),
                  child: SizedBox(
                    width: 300,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                          padding: EdgeInsets.all(15),
                          backgroundColor:
                              const Color.fromARGB(131, 255, 255, 255),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Set the border radius here
                          ),
                        ),
                        child: Text(
                          "sign up with google",
                          style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                          ),
                        )),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 20, left: 20),
                  child: Row(children: [
                    Text(
                      "Already have an account ? ",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'login ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            decoration: TextDecoration.underline,
                            fontWeight: FontWeight.w700),
                      ),
                    ),
                  ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
