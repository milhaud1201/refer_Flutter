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
          appBar: AppBar(
              title: Text('앱제목'),
              leading: Icon(Icons.star),
              actions: [Icon(Icons.star), Icon(Icons.star)],
          ),
          body: Container(
            height: 150,
            decoration: BoxDecoration(
              border:  Border.all(color: Colors.black45)
            ),
            margin: EdgeInsets.all(5),
            padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('assets/camera.png', height: 150, width: 150),
                Container(
                  margin: EdgeInsets.all(10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: 40,
                          child: Text('캐논 DSLR 100D (단렌즈,\n충전기 16기가SD 포함')),
                      SizedBox(
                          height: 15,
                          child: Text('성동구 행당동 끝올 10분 전')),
                      SizedBox(
                          child: Text('210,000원')),
                      Container(
                        padding: EdgeInsets.fromLTRB(150, 2, 2, 2),
                        child: Row(
                          children: const [
                            Icon(Icons.heart_broken),
                            Text('4'),],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          bottomNavigationBar: BottomAppBar(
              child: Container(
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black45)
                ),
                height: 60,
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
              )
          ),
        ),
    );
  }
}