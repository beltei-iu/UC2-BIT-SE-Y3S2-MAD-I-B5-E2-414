import 'package:flutter/material.dart';

void main() {
  // Create Control
  final text = Text("Welcome to BELTEI");
  final logo = Image.asset("assets/images/logo.png");

  // Create Layout
  final layout = Center(
    child: logo,
  );

  // Create AppBar
  final _appBar = AppBar(
    title: Text("BookMe"),
    elevation: 2,
    actions: [Icon(Icons.search)],
  );

  // Create Screen
  final screen = Scaffold(
    body: layout,
  );

  // Create root App
  final app = MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber, useMaterial3: false),
    home: screen,
    debugShowCheckedModeBanner: false,
  );
  runApp(app);
}
