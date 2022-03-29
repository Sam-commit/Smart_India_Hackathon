import 'package:flutter/material.dart';
import 'package:academic_activities/widgets/my_card3.dart';

class Scholarships extends StatefulWidget {
  Scholarships({required this.data});

  List<dynamic> data;

  @override
  _ScholarshipsState createState() => _ScholarshipsState();
}

class _ScholarshipsState extends State<Scholarships> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Scholarships",
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
        itemBuilder: (BuildContext context, int index) {
          return Container(
            //width: MediaQuery.of(context).size.width/2,
            height: MediaQuery.of(context).size.height/2.75,
            child: MyCard_Scholarships(
              data: widget.data[index],
            ),
          );
        },
      ),
    );
  }
}
