import 'package:flutter/material.dart';
import 'package:mad/routes/app_route.dart';
import 'package:mad/screen/splash_screen.dart';

void main() {
  final screen = SplashScreen();

  // Create root App
  final app = MaterialApp(
    theme: ThemeData(primaryColor: Colors.amber, useMaterial3: false),

    // Option1
    // home: screen,

    // Option2
    initialRoute: AppRoute.splashScreen,
    onGenerateRoute: AppRoute.generateRoute,
    navigatorKey: AppRoute.key,
    // Option 3
    // routes: {
    //   "/": (contex) => SplashScreen(),
    //   "/mainScreen": (contex) => SplashScreen(),
    // },

    debugShowCheckedModeBanner: false,
  );

  runApp(app);
}
