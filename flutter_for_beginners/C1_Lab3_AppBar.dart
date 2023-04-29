import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(
            itemCount: 100,
            itemBuilder: (context, i){  // i는 정수 (0, 1, 2)
              // print(i);  // 디버깅할 때 유용
              return Profile();
            }),
        bottomNavigationBar: BottomAppBar(
          child: BottomIcon(),
        ),
      ),
    );
  }
}

class  Profile extends StatelessWidget {
  const Profile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
          leading: Icon(Icons.account_circle, size: 50.0),
          title: Text('홍길동')
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
