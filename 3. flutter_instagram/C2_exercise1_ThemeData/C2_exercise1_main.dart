import 'package:flutter/material.dart';
import './style.dart';

void main() {
  runApp(MaterialApp(
    theme: theme,
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
      body: Text('안녕', style: Theme.of(context).textTheme.bodyMedium,),
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Shop',
            icon: Icon(Icons.shopping_bag),
            activeIcon: Icon(Icons.shopping_bag_outlined),
          ),
        ],
        currentIndex: 0,
        // onTap: _onItemTapped,
      ),
    );
  }
}
