import 'package:button_practice/layout/main_layout.dart';
import 'package:flutter/material.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute.of(context)!.settings.arguments;

    return MainLayOut(title: "route two page", children: [
      Text(
        "argument : $arguments ",
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: Text("Pop")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamed("/three", arguments: 999);
          },
          child: Text("push named"))
    ]);
  }
}
