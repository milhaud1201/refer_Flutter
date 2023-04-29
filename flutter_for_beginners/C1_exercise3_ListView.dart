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
          body: ListView( 
            children: [
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
              Profile(),
            ],
          ),
        ),
    );
  }
}

class  Profile extends StatelessWidget {
  const Profile ({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Row(
        children: [
          Container(
            margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
            child: Icon(Icons.account_circle,
                size: 50.0),
          ),
          Text('홍길동')
        ],
      ),
    );
  }
}
