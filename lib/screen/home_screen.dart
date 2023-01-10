import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("버튼"),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ElevatedButton(
                onPressed: (){},
                style: ButtonStyle(
                  // all -> 모든 상태에서 똑같은 값을 적용하겠다는 뜻
                  // resolveWith -> 버튼의 상태에 따라 색깔을 줄 수 있다.

                  // Material State
                  // hovered - 호버링 상태 ( 마우스 커서를 올려놓은 상태 )
                  // focused - 포커스 되었을 때 (텍스트 필드)
                  // pressed - 눌렸을 때
                  // dragged - 드래그 됐을 때
                  // selected - 선택 됐을 때 ( 체크박스, 라디오 버튼 )
                  // scrollUnder - 
                  backgroundColor: MaterialStateProperty.all(Colors.purple),
                  foregroundColor: MaterialStateProperty.resolveWith((states) {
                    MaterialState.
                  })
                ),
                child: Text("Button Style")),
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  // primary 는 메인 컬러라는 뜻이다.
                  primary: Colors.cyan,
                  // 글자 및 애니메이션 색깔
                  onPrimary: Colors.lightBlue,
                  // 그림지 색깔
                  shadowColor: Colors.green,
                  elevation: 5.0,
                  textStyle: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 20.0),
                  // 버튼 패딩
                  padding: EdgeInsets.all(32.0),
                  side: BorderSide(color: Colors.black, width: 4.0),
                ),
                child: Text(
                  "ElevatedButton",
                  style: TextStyle(color: Colors.white),
                )),
            OutlinedButton(
                onPressed: () {},
                style: OutlinedButton.styleFrom(
                    // 주 색상과 글자 , 에니메이션 색상을 변경해준다.
                    primary: Colors.green,
                    backgroundColor: Colors.yellow,
                    elevation: 10.0),
                child: Text("OutlinedButton")),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                primary: Colors.pinkAccent,
                backgroundColor: Colors.black54,
                textStyle: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w500)
              ),
              child: Text("TextButton"),
            )
          ],
        ),
      ),
    );
  }
}
