import 'package:flutter/material.dart';

var theme = ThemeData(
    appBarTheme: AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 1,  // 그림자
        titleTextStyle: TextStyle(color: Colors.black87, fontSize: 20),
        iconTheme: IconThemeData(color: Colors.black87)
    ),
    textTheme: TextTheme(
        bodyMedium: TextStyle(color: Colors.amber),
        bodySmall: TextStyle(color: Colors.black)
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: Colors.white,
        elevation: 2,
        selectedItemColor: Colors.black
    )
);