import 'package:button_practice/layout/main_layout.dart';
import 'package:flutter/material.dart';

class RouteOneScreen extends StatelessWidget {
  const RouteOneScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "routeOnePage", children: [
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop"))
    ]);
  }
}
