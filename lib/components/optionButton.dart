import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final String text;
  final Color color;
  final VoidCallback? onTap; // Make it nullable to disable button

  const OptionButton({
    Key? key,
    required this.text,
    required this.color,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call the onTap function when the button is tapped
      child: Container(
        width: MediaQuery.of(context).size.width / 2, // Adjust width as needed
        padding: const EdgeInsets.all(16.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
