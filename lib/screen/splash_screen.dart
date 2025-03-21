import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screen/main_screen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final getStart = ElevatedButton(
        onPressed: () {
          // final route = MaterialPageRoute(builder: (context) => MainScreen());

          // Navigator.of(context).pushNamed(AppRoute.mainScreen);

          AppRoute.key.currentState?.pushNamed(AppRoute.mainScreen);
        },
        child: Text("Get Start"));

    final screen = Scaffold(
      body: Center(
        child: getStart,
      ),
    );

    return screen;
  }
}
