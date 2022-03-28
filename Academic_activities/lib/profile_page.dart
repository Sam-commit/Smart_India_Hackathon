import 'package:academic_activities/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int currentIndex=0;
  final screens = [
    HomePage(),
    ProfilePage(),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Profile",
          style: TextStyle(color: Colors.black),
        ),
        elevation: 0,
        backgroundColor: Color(0xFF5264C6),
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: MediaQuery.of(context).size.width/8),
                decoration: BoxDecoration(
                    color: Color(0xFF5264C6),
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(30),
                        bottomLeft: Radius.circular(30))),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 6,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/11,

                child: CircleAvatar(
                  radius: MediaQuery.of(context).size.width/8,
                  backgroundImage: AssetImage("images/img.jpg"),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Samarth Goel")),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10),
            child: Center(child: Text("Btech in IIITA")),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
            child: Text("Personal Info"),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                FaIcon(FontAwesomeIcons.user,color: Colors.blue,),
                Text("Samarth Goel"),
              ],
            ),
          )

        ],
      ),
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
          BottomNavigationBarItem( label:" ", icon: Icon(FontAwesomeIcons.bookmark)),
          BottomNavigationBarItem(label:" ",icon: Icon(FontAwesomeIcons.user)),


        ],
      ),
    );
  }
}
