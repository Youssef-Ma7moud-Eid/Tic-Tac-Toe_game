import 'package:flutter/material.dart';

Future<void> showDialogMessage(
    {required BuildContext context,
    required String title,
    required String message}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        title: Text(
          title,
          style: const TextStyle(
            color: Colors.red,
            fontSize: 20,
          ),
        ),
        content: Text(
          message,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Play Again',
              style: TextStyle(fontSize: 20, color: Colors.blue),
            ),
          ),
        ],
      );
    },
  );
}
