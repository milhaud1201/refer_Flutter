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
  var like = [0, 0, 0];

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          child: Text(a.toString()),  // state는 변화면 state 사용하는 위젯이 자동 재렌더링됨
          onPressed: (){
            setState(() {  // state가 변경되면 state쓰는 위젯 자동 재렌더링됨
              a++;
            });
            // print(a);
            // a++;
          },  // FAB
        ),
        appBar: AppBar(title: Text('연락처앱'),),
        body: ListView.builder(  // ListTile 위젯을 반복하며 자동 스크롤을 만듬 (매우 유용)
          itemCount: 3,
          itemBuilder: (context, i) { // i는 정수 (0, 1, 2)
            // print(i);  // 디버깅할 때 유용
            return ListTile(  // ListTile의 leading, title, trailing
              leading: Text(like[i].toString()),  // 버튼 푸쉬 숫자만큼 문자타입으로 보여줌
              title: Text(name[i]),
              trailing: ElevatedButton(
                  onPressed: () { 
                    setState(() {  // 클릭시 상태를 변화해라
                      like[i]++; 
                    });
                    print(like[i]);  // 디버깅 
                  },
                  child: Text('좋아요')),
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
