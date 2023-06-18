import 'package:flutter/material.dart';
import 'package:dice_app/gradient_container.dart';

void main() {
  // ALways start with MaterialApp which usually holds Scaffold
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.deepPurple, Colors.black]),
      ),
    ),
  );
}
