import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
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
                    FontAwesomeIcons.briefcase,
                    color: Colors.white,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Internships",
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
          "Support",
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
     body: Padding(
       padding: const EdgeInsets.only(left: 18,right: 18,top: 10,bottom: 8),
       child: Container(
         decoration: BoxDecoration(
             color: Color(0xFFE0E5FF),

             borderRadius: BorderRadius.circular(12)
         ),
       ),
     ),
     bottomNavigationBar: TextFormField(
       decoration: InputDecoration(
         prefixIcon: Padding(
           padding: const EdgeInsets.all(8.0),
           child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             // mainAxisSize: MainAxisSize.min,
             children: [Text("Message..."),Icon(Icons.send)],
           ),
         ),
         focusedBorder: OutlineInputBorder(
           borderSide: BorderSide(
             color: Colors.grey,
             width: 1,
           ),
         ),
         enabledBorder: OutlineInputBorder(
           borderSide: BorderSide(color: Colors.grey, width: 1),
         ),
       ),
     ),
    );
  }
}
