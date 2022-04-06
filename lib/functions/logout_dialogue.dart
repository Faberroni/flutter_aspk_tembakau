import 'package:flutter/material.dart';

Future<bool> showLogooutDialogue(BuildContext context) {
  return showDialog<bool>(
    context: context,
    builder: (context) {
      return AlertDialog(
        title: const Text('Log out'),
        content: const Text('Keluar dari aplikasi?'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(false);
            },
            child: const Text('Tidak'),
          ),
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(true);
            },
            child: const Text('Iya'),
          ),
        ],
      );
    },
  ).then(
    (value) => value ?? false,
  );
}