import 'package:flutter/material.dart';
import 'package:football_teams/presentation/screens/home_screen.dart';

class RoutesManager {
  static const String homeRoute = "/";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case RoutesManager.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text('AppStrings.noRouteFound'),
        ),
        body: const Center(
          child: Text('AppStrings.noRouteFound'),
        ),
      ),
    );
  }
}
