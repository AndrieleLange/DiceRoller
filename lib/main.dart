import 'package:first_app/gradient_container.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
     MaterialApp(
      home: Scaffold(
        // backgroundColor: Color.fromRGBO(181, 126, 220, 1),
        body: GradientContainer([const Color.fromARGB(255, 133, 0, 157), const Color.fromARGB(255, 32, 6, 80)])
      ),
    ),
  );
}

