import 'package:academic_activities/screens/chat_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widgets/category1.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'functioning/networking.dart';

import 'screens/profile_page.dart';
import 'screens/chat_screen.dart';
import 'widgets/category1.dart';
import 'widgets/category2.dart';
import 'widgets/category3.dart';
import 'screens/profile_page.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex=0;
  final screens = [
    HomePage(),
    ChatScreen(),
    ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
      iconSize: 28,
      currentIndex: currentIndex,
      onTap: (index){
        setState(() {
          currentIndex=index;
        });
      },
      type: BottomNavigationBarType.fixed, // Fixed
      selectedItemColor: Colors.white,
      backgroundColor: Color(0xFF738AFF),
      items: [
        BottomNavigationBarItem(label: " ", icon: Icon(FontAwesomeIcons.home,)),
        BottomNavigationBarItem(label:" ",icon: Icon(FontAwesomeIcons.headset)),
        // BottomNavigationBarItem( label:" ", icon: Icon(FontAwesomeIcons.bookmark)),
        BottomNavigationBarItem(label:" ",icon: Icon(FontAwesomeIcons.user)),


      ],
    ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<dynamic> hackathon_data = [];
  List<dynamic> exams_data = [];
  List<dynamic> scholarships_data = [];
  List<dynamic> fest_data = [];

  Future<void> sol() async {
    hackathon_data = await get_data("hackathons");
    exams_data = await get_data("exams");
    scholarships_data = await get_data("scholarships");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Color(0xFF5264C6),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(30),
            bottomRight: Radius.circular(30),
          ),
        ),
        child: ListView(
          children: [
            DrawerHeader(
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/img.jpg"),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Samarth Goel",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      Text(
                        "+91 9696969696",
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.trophy,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Technical Fests",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.code,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Hackathons",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.newspaper,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Scholarships",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.scroll,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Exams",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.gear,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Settings",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.headset,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Ask a Query",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.circleInfo,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "About Us",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30, bottom: 20),
              child: Row(
                children: [
                  FaIcon(
                    FontAwesomeIcons.rightFromBracket,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Logout",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
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
      body: FutureBuilder(
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {

              return ListView(
                children: [
                  Categories(
                    name: "Hackathons",
                    data: hackathon_data,
                  ),

                  Category2(
                    name: "Exams",
                    data: exams_data,
                  ),

                  Category3(
                    name: "Scholarships",
                    data: scholarships_data,
                  ),
                ],
              );

          }

          print(snapshot.connectionState);
          return Center(
            child: CircularProgressIndicator(),
          );


        },
        future: sol(),
      ),

    );
  }
}
