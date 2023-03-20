import 'package:flutter/material.dart';
import 'package:pregcare/auth/login_controller.dart';

class MyDialogue {
  // set up the AlertDialog
  logotDialogue(context) {
    return AlertDialog(
      title: const Text("Logout !"),
      content: const Text("Would you like to logout from app ?"),
      actions: [
        TextButton(
          child: const Text("Cancel"),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
            child: const Text(
              'Logout',
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              LoginController().logout();
              Navigator.pop(context);
            }),
      ],
    );
  }
}
