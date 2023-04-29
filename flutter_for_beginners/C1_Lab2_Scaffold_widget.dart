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
          appBar: AppBar( title: Text('앱제목') ),
          body: Container(
            color: Colors.grey,
            height: 400,
            child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                ],
            ),
          ),
          bottomNavigationBar: BottomAppBar( child: Text('하단바임 ㅅㄱ') ),
        )
    );
  }
}