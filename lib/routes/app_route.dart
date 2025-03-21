import 'package:flutter/material.dart';
import 'package:mad/screen/main_screen.dart';
import 'package:mad/screen/product_detail_screen.dart';
import 'package:mad/screen/splash_screen.dart';

class AppRoute {
  static const String splashScreen = "/";
  static const String mainScreen = "/mainScreen";
  static const String productDetailScreen = "/productDetailScreen";

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return _buildRoute(settings, SplashScreen());
      case mainScreen:
        return _buildRoute(settings, MainScreen());
      case productDetailScreen:
        return _buildRoute(settings, ProductDetailScreen());
      default:
        throw RouteException("Route not found.");
    }
  }

  static Route<dynamic> _buildRoute(RouteSettings settings, Widget newRoute) {
    return MaterialPageRoute(
        settings: settings, builder: (context) => newRoute);
  }
}

class RouteException {
  String message;

  RouteException(this.message);
}
