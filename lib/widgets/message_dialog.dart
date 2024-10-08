import 'package:flutter/material.dart';

Future<void> showDialogMessage(
    BuildContext context, String title, String message) {
  return showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(title),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('Play Again'),
          ),
        ],
      );
    },
  );
}
