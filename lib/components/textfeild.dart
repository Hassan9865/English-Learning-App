import 'package:flutter/material.dart';

class MyTextFeid extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? labelText;
  // final bool obscureText;
  const MyTextFeid({
    super.key,
    this.labelText,
    required this.controller,
    required this.hintText,
    // required this.obscureText
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      // obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(20.0)),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(20.0),
        ),
        fillColor: Colors.grey[200],
        filled: true,
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.grey),
      ),
    );
  }
}
