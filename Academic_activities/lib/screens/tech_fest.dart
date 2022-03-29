import 'package:flutter/material.dart';
import 'package:academic_activities/widgets/my_card4.dart';

class TechFest extends StatefulWidget {
  TechFest({required this.data});

  List<dynamic> data;

  @override
  _TechFestState createState() => _TechFestState();
}

class _TechFestState extends State<TechFest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "TechFests",
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
            child: MyCard_Techfests(
              data: widget.data[index],
            ),
          );
        },
      ),
    );
  }
}
