import 'package:button_practice/layout/main_layout.dart';
import 'package:button_practice/screen/route/route_three_screen.dart';
import 'package:flutter/cupertino.dart';
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
          child: Text("push named")),
      ElevatedButton(
          onPressed: () {
            // pushReplacement 는 이전 페이지를 지우고 페이지가 이동된다.
            // 페이지를 대체하고 스택에 쌓이는 느낌
            Navigator.of(context).pushReplacement(
                CupertinoPageRoute(builder: (_) => RouteThreeScreen()));
          },
          child: Text("Push Replacement")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushAndRemoveUntil(
              MaterialPageRoute(builder: (_) => RouteThreeScreen()),
              (route) => route.settings.name == "/",
            );
          },
          child: Text("push And Remove Until")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              "/three",
              (route) => route.settings.name == "/",
            );
          },
          child: Text("push Named And Remove Until")),
    ]);
  }
}
