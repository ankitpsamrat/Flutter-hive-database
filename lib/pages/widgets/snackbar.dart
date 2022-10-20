// ignore_for_file: library_prefixes

import 'package:flutter/material.dart';
import '/static.dart' as Static;

SnackBar deleteInfoSnackBar = SnackBar(
  backgroundColor: Static.PrimaryColor,
  duration: const Duration(seconds: 2),
  content: Row(
    children: const [
      Icon(
        Icons.info_outline,
        color: Colors.white,
      ),
      SizedBox(width: 6.0),
      Text(
        "Long Press to delete",
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
    ],
  ),
);
