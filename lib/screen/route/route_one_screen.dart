import 'package:button_practice/layout/main_layout.dart';
import 'package:button_practice/screen/route/route_two_screen.dart';
import 'package:flutter/material.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({this.number, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "routeOnePage", children: [
      Text(
        "arguments : ${number.toString()}",
        textAlign: TextAlign.center,
      ),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text("Pop")),
      ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
                // 페이지는 하나씩 쌓이는 구조이다.
                // 스택 구조이다.
                MaterialPageRoute(
                    builder: (BuildContext context) {
                      return RouteTwoScreen();
                    },
                    // 데이터를 넘길 수 있다.
                    settings: RouteSettings(arguments: 789)));
          },
          child: Text("Push")),
      ElevatedButton(
          onPressed: () {
            // maybePop -> 해당 페이지만 존재하는게 아니면 Pop 을 시켜준다.
            Navigator.of(context).maybePop();
          },
          child: Text("maybePop")),
      ElevatedButton(
          onPressed: () {
            // maybePop 은 라우트 스택에 해당 페이지만 존재할 때 뒤로가기(Pop)가 실행되지 않는다.
            print(Navigator.of(context).canPop());
          },
          child: Text("CnaPop")),
    ]);
  }
}
