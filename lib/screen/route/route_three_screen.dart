import 'package:button_practice/layout/main_layout.dart';
import 'package:flutter/material.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final argument = ModalRoute.of(context)!.settings.arguments;

    return MainLayOut(title: "Route Three", children: [
      Text("argument : $argument", textAlign: TextAlign.center,),
      ElevatedButton(onPressed: () {
        Navigator.of(context).pop();
      }, child: Text("Pop"))
    ]);
  }
}
