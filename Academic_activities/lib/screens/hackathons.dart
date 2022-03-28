import 'package:flutter/material.dart';
import 'package:academic_activities/widgets/my_card1.dart';

class Hackathons extends StatefulWidget {

  Hackathons({required this.data});

  List<dynamic>data;

  @override
  _HackathonsState createState() => _HackathonsState();
}

class _HackathonsState extends State<Hackathons> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Hackathons",
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
      body: ListView.builder(
        itemCount: widget.data.length,
        itemBuilder: (BuildContext context,int index){
          return MyCard_Hackathon(data: widget.data[index]);
        },

      ),
    );
  }
}
