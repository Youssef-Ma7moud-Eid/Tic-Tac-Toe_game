import 'package:flutter/material.dart';

Future<void> showDialogMessage(
    {required BuildContext context,
    required String title,
    required String message}) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Colors.yellow,
        title: Text(
          title,
          style: const TextStyle(
            fontSize: 20,
          ),
        ),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text(
              'Play Again',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      );
    },
  );
}
