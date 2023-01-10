import 'package:button_practice/layout/main_layout.dart';
import 'package:button_practice/screen/route/route_one_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 유저들의 뒤로가기를 막을 수 있다.
    // 안드로이드 폰 같튼경우 시스템 버튼( < )을 이용하더라도 뒤로가기를 통해 앱을 종료하게 하는것을 막을 수 있다.
    return WillPopScope(
      onWillPop: () async {
        // true 리턴 -> pop 가능
        // false 리턴 -> pop 불가능
        // return false;

        // 특정 로직을 통하여 true, false 값을 조정 가능하다.
        return Navigator.of(context).canPop();
      },
      child: MainLayOut(title: "Home Screen", children: [
        ElevatedButton(
            onPressed: () async {
              final result = await Navigator.of(context)
                  .push(MaterialPageRoute(builder: (BuildContext builder) {
                return RouteOneScreen(
                  number: 123,
                );
              }));

              print(result);
            },
            child: Text("Push")),
        ElevatedButton(
            onPressed: () {
              // maybePop 은 라우트 스택에 해당 페이지만 존재할 때 뒤로가기(Pop)가 실행되지 않는다.
              Navigator.of(context).maybePop();
            },
            child: Text("MaybePop")),
        ElevatedButton(
            onPressed: () {
              // maybePop 은 라우트 스택에 해당 페이지만 존재할 때 뒤로가기(Pop)가 실행되지 않는다.
              print(Navigator.of(context).canPop());
            },
            child: Text("CnaPop")),
      ]),
    );
  }
}
