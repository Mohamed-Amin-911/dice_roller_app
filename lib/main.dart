import 'package:flutter/material.dart';
import 'package:first_app/grad_cont.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
          body: ContainWid([
        Color.fromARGB(255, 236, 197, 40),
        Color.fromARGB(255, 221, 228, 17),
      ])),
    ),
  );
}
