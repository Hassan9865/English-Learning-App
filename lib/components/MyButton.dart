import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mybutton extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  final Color color;
  final double width;

  const Mybutton({
    super.key,
    this.ontap,
    required this.text,
    required this.color,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: width,
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(50.0),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
        ),
      ),
    );
  }
}
