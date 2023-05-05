import 'package:flutter/material.dart';
import './style.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

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

  // likes, user, content
  var data = [];

  getData() async {
    var result = await http.get(Uri.parse('https://codingapple1.github.io/app/data.json'));
    if (result.statusCode == 200) {
    var json = jsonDecode(result.body);
    setState(() {
      data = json;
      print(data);
    });
    } else {
      throw Exception('error');
    }
  }

  @override
  void initState() {
    super.initState();
    getData();
  }

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
      body: [Home( data: data ),
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

class Home extends StatelessWidget {
  const Home({Key? key, this.data}) : super(key: key);
  final data;

  @override
  Widget build(BuildContext context) {
    // print(data);
    if (data.isNotEmpty) {
      return ListView.builder(
      itemCount: 3,
      itemBuilder: (context, index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
                constraints: BoxConstraints(maxWidth: 600),
                padding: EdgeInsets.all(5),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.network(data[index]['image']),
                    Text("좋아요 ${data[index]['likes']}"),
                    Text(data[index]['user']),
                    Text(data[index]['content'])
                  ],
                )),
          ],
        );
      }
    );
    } else {
      return CircularProgressIndicator();
    }
  }
}
