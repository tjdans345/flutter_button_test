import 'package:button_practice/screen/navigation_screen.dart';
import 'package:button_practice/screen/route/route_one_screen.dart';
import 'package:button_practice/screen/route/route_three_screen.dart';
import 'package:button_practice/screen/route/route_two_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // home: NavigationScreen(),
    initialRoute: "/",

    // namedRoute 이다.
    routes: {
      "/": (context) => NavigationScreen(),
      "/one": (context) => RouteOneScreen(),
      "/two": (context) => RouteTwoScreen(),
      "/three": (context) => RouteThreeScreen(),
    },
  ));
}
