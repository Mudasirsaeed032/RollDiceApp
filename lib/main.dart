import 'package:flutter/material.dart';
import './gradient_container.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: GradientContainer([
          const Color.fromARGB(255, 46, 44, 44),
          Colors.blueGrey,
        ]),
      ),
    ),
  );
}
