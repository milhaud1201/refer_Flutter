import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var a = 1;  // StatefulWidget 안의 변수는 자동으로 state가 됨
  var name = ['홍길동', '치킨집', '피자집'];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),  // state는 변화면 state 사용하는 위젯이 자동 재렌더링됨
          onPressed: (){
            setState(() {  // state가 변경되면 state쓰는 위젝 자동 재렌더링됨
              a++;
            });
            // print(a);
            // a++;
          },  // FAB
        ),
        appBar: AppBar(title: Text('연락처앱'),),
        body: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, i) { // i는 정수 (0, 1, 2)
              // print(i);  // 디버깅할 때 유용
              return ListTile(
                leading: Icon(Icons.account_circle, size: 50.0),
                title: Text(name[i]),
              );
              },
        ),
        bottomNavigationBar: BottomAppBar(
          child: BottomIcon(),
        ),
      ),
    );
  }
}


class BottomIcon extends StatelessWidget {
  const BottomIcon({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white)
      ),
      height: 40,
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          Icon(Icons.call),
          Icon(Icons.message),
          Icon(Icons.contact_page),
        ],
      ),
    );
  }
}
