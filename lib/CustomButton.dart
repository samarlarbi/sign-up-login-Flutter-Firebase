import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Widget widget;
  final String title;
  final Color bgcolor, titlecolor;
  const CustomButton(
      {super.key,
      required this.widget,
      required this.title,
      required this.bgcolor,
      required this.titlecolor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: SizedBox(
        width: 300,
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => widget),
            );
          },
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(15),
            backgroundColor: bgcolor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            title,
            style: TextStyle(
              color: titlecolor,
            ),
          ),
        ),
      ),
    );
  }
}
