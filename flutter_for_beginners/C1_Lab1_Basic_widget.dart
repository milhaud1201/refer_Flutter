import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// 웹의 메인페이지를 셋팅하기 위해 채우는 기본 문법
// 에디터에서 stless tab key 자동완성
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // 아이콘 첨부 https://api.flutter.dev/flutter/material/Icons-class.html
    return MaterialApp(

      // 기본위젯 Text(), Icon()m Container()
      // home: Text('안녕')

      // home: Icon(Icons.star)

      // home: Container() 모든 단위는 Logical Pixel (1cm=38LP)
      // home: Container(width : 50, height : 50, color: Colors.blue)
      // 색상을 어디서부터 채울지 x,y position -> Center(), Align()
      home: Container(
        child: Text('박스안 글자임')
      )
    );
  }
}