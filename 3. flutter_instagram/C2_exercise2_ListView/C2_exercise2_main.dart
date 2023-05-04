import 'package:flutter/material.dart';
import './style.dart';

void main() {
  runApp(MaterialApp(
    theme: theme,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var tab = 0;
  var post = Post();

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
      body: [post,
             Text('쇼핑')][tab],
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
        currentIndex: tab,
        onTap: (i){
          setState(() {
            tab = i;
          });
        },
      ),
    );
  }
}

class Post extends StatelessWidget {
  const Post({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network('https://codingapple1.github.io/kona.jpg'),
            Container(
                constraints: BoxConstraints(maxWidth: 600),
                padding: EdgeInsets.all(20),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('좋아요 100'),
                    Text('글쓴이'),
                    Text('글내용')
                  ],
                )),
          ],
        );
      }
    );
  }
}
