import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isLove = false;

  @override
  Widget build(BuildContext context) {
    // Create Control
    final text = Text("Welcome to BELTEI");
    final topImage = Container(
      child: Image.asset("assets/images/beltei_intake2.png",
          fit: BoxFit.cover, width: MediaQuery.of(context).size.width),
    );

    // configuration / state
    int number = 10;

    // Widget1
    final text1 = Text("This is state $number");
    // Widget2
    final text2 = Text("This is state $number");

    final icon = Icon(
      Icons.heart_broken,
      size: 30,
    );

    final icon2 = Icon(
      size: 30,
      Icons.heart_broken,
      color: Colors.red,
    );

    final layout = Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          text1,
          text2,
          GestureDetector(
            child: isLove ? icon2 : icon,
            onTap: () {
              setState(() {
                isLove = !isLove;
              });
            },
          )
        ],
      ),
    );

    // Create AppBar
    final _appBar = AppBar(
      title: Text("BookMe"),
      elevation: 2,
      actions: [Icon(Icons.search)],
    );

    // Create Screen
    final screen = Scaffold(
      body: Column(
        children: [topImage],
      ),
    );
    return screen;
  }
}
