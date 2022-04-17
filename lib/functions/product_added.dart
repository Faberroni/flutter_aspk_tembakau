import 'dart:async';

import 'package:flutter/material.dart';

Widget productAdded(
  BuildContext context,
  String text,
) {
  return SnackBar(
    content: Text(text),
  );
}