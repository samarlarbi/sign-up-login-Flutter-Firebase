import 'package:flutter/material.dart';
import 'package:sign_up_login/ColorPalete.dart';

class CInput extends StatelessWidget {
  final String name;
  final String hintText;
  final IconData? prefixIcon;
  final bool obscureText;

  const CInput(
      {super.key,
      required this.name,
      required this.hintText,
      this.prefixIcon,
      required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
            child: Text(
              name,
              style: TextStyle(color: ColorPalete().color2, fontSize: 10),
            ),
          ),
          TextFormField(
            obscureText: obscureText,
            style: TextStyle(color: Colors.black),
            decoration: InputDecoration(
              border: InputBorder.none,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: ColorPalete().color2),
              ),
              hintText: hintText,
              hintStyle: TextStyle(color: Colors.grey),
              prefixIcon: prefixIcon != null ? Icon(prefixIcon) : null,
            ),
          )
        ],
      ),
    );
  }
}
