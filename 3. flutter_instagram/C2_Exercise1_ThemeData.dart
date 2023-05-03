import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 1,  // 그림자
        titleTextStyle: TextStyle(color: Colors.black87, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black87)
      ),
      textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.amber)
      )
    ),
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text('Instagram'),
          ],
        ),
        actions: [
          IconButton(
              icon: Icon(Icons.add_box_outlined),
              onPressed: (){},
              iconSize: 30,
          )
          ],
      ),
      body: Text('안녕'),
    );
  }
}
