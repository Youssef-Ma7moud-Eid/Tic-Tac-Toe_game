import 'package:flutter/material.dart';

void scaffoldmessenger({
  required BuildContext context,
  required String text,
  required Color color,
  Color? background,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      behavior: SnackBarBehavior.fixed,
      // margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      backgroundColor: background ?? Colors.green,
      showCloseIcon: true,
      closeIconColor: Colors.white,
      content: Text(
        text,
        style: TextStyle(
          fontSize: 18,
          color: color,
        ),
      ),
    ),
  );
}
