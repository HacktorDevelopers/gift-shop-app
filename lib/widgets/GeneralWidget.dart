import 'package:flutter/material.dart';

Widget buildGiftTypeTag({text}) {
  return Chip(
    label: Text(
      text,
      style: TextStyle(
          fontSize: 15, fontWeight: FontWeight.bold, color: Colors.white),
      overflow: TextOverflow.clip,
    ),
    backgroundColor: Colors.red,
    elevation: 2,
    shadowColor: Colors.black,
  );
}
