import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  const MyTextField(
      {super.key,
      required this.controller,
      required this.textHint,
      required this.obsecureText});

  final controller;
  final String textHint;
  final bool obsecureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
        controller: controller,
        obscureText: obsecureText,
        decoration: InputDecoration(
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
              color: Colors.grey.shade400,
            )),
            fillColor: Colors.grey.shade200,
            filled: true,
            hintText: textHint,
            hintStyle: TextStyle(
              color: Colors.grey[500],
            )),
      ),
    );
  }
}
