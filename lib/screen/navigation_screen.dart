import 'package:button_practice/layout/main_layout.dart';
import 'package:button_practice/screen/route/route_one_screen.dart';
import 'package:flutter/material.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayOut(title: "Home Screen", children: [
      ElevatedButton(
          onPressed: () async {
           final result = await Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext builder) {
              return RouteOneScreen(number: 123,);
            }));

           print(result);

          },
          child: Text("Push"))
    ]);
  }
}
