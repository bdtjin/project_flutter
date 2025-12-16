import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 상태가 없는 위젯 기본 클래스
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(), // 여기서 MyHomePage 언급
    );
  }
}

// UI가 변경되도록 구성해줘야 하니까 StatefulWidget 사용
// createState 함수 내에서 MyHomePage에서 사용할 state class를 정의해줘야함!
class MyHomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyHomePageState();
  }
}

// MyHomePage에서 사용할 state class 정의
class MyHomePageState extends State<MyHomePage> {
  //counter 변수 선언
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    print('build 호출됨'); // build 함수가 호출이 되는지 확인하기 위해 print
    // Scaffold = 시각적인 레이아웃 및 구조를 설정
    return Scaffold(
      // 최상단 배치되는 위젯
      appBar: AppBar(title: Text('Test app')),
      // 화면에서 보여지는 부분 (appBar 제외)
      body: Center(
        child: Text(
          '$counter',
          // 폰트 사이즈 설정
          style: TextStyle(fontSize: 100),
        ),
      ),
      // 플로팅 액션 버튼: 무언가를 추가할 때 사용하는 버튼
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState 함수를 통해
          setState(() {
            counter++;
          });
          print('카운터 증가 : $counter');
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
