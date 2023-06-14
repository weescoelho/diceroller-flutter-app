import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [
          Color.fromARGB(255, 31, 2, 80),
          Color.fromARGB(255, 62, 23, 131)
        ]),
      ),
    ),
  );
}
