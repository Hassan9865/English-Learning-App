import 'package:eng_learning_app/view/home/home_view.dart';
import 'package:flutter/material.dart';

void showAlertDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Rounded corners
        ),
        title: Row(
          children: [
            Icon(Icons.star, color: Colors.orangeAccent), // Eye-catching icon
            SizedBox(width: 8),
            Text('Wow, Great!'),
          ],
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/eng.jpg", fit: BoxFit.cover),
            SizedBox(height: 20),
            Text(
              "Do you want to play the next quiz?",
              style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            style: TextButton.styleFrom(
              backgroundColor: Colors.grey[200],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.of(context).pop(); // Close the dialog
            },
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.redAccent),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.greenAccent,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomeView()));
            },
            child: Text('Play Next'),
          ),
        ],
      );
    },
  );
}
