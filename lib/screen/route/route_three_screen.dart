import 'package:flutter/material.dart';

class RouteThreeScreen extends StatelessWidget {
  const RouteThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("RouteThreeScreen"),
      ),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Pop"))
        ],
      ),
    );
  }
}
