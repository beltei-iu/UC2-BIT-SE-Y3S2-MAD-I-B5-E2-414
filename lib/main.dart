import 'package:flutter/material.dart';
import 'package:mad/splash_screen.dart';

void main() {
  final screen = SplashScreen();

  // Create root App
  final app = MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber, useMaterial3: false),
    home: screen,
    debugShowCheckedModeBanner: false,
  );

  runApp(app);
}
