import 'package:flutter/material.dart';
import 'package:academic_activities/widgets/my_card2.dart';

class Exams extends StatefulWidget {
  Exams({required this.data});

  List<dynamic> data;

  @override
  _ExamsState createState() => _ExamsState();
}

class _ExamsState extends State<Exams> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Exams",
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
            child: MyCard_Exams(
              data: widget.data[index],
            ),
          );
        },
      ),
    );
  }
}
