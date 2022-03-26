import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Home",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        actions: [
          Row(
            children: [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              Icon(
                Icons.notifications,
                color: Colors.black,
              )
            ],
          )
        ],
      ),
      body: ListView(
        children: [
          Categories()
        ],
      ),
    );
  }
}

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text("Hackathons"),
          Container(
            height: 200,
            width: 300,
            child: ListView(
              //scrollDirection: Axis.horizontal,
              children: [
                Card()
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      child: Column(
        children: [
          const Expanded(
            flex: 1,
            child: Image(
                image: NetworkImage(
                    "https://s3.envato.com/files/dc5752b4-e216-4523-9302-aa35bb5c0566/inline_image_preview.jpg"),),
          ),
          Expanded(child: Container(child: Text("Hello"),),flex: 1,),
        ],
      ),
    );
  }
}
