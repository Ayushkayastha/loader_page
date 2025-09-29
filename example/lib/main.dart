import 'package:flutter/material.dart';
import 'package:loader_screen/loader_screen.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: LoaderPage(
          message: 'Loading...',
          color: Colors.black,
          child: Icon(Icons.hourglass_bottom, size: 50, color: Colors.white),
        ),
      );
  }
}


