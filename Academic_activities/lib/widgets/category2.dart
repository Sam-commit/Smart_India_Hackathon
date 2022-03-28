import 'package:flutter/material.dart';
import 'my_card1.dart';
import 'my_card2.dart';

class Category2 extends StatefulWidget {
  Category2({required this.name, required this.data});

  String name;
  List<dynamic> data;

  @override
  _Category2State createState() => _Category2State();
}

class _Category2State extends State<Category2> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                widget.name,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.25,
              width: MediaQuery.of(context).size.width,
              child: ListView.builder(
                itemCount: widget.data.length,
                itemBuilder: (BuildContext context,int index){
                  return MyCard_Exams(data: widget.data[index]);
                },
                scrollDirection: Axis.horizontal,

              ),
            )
          ],
        ),
      ),
    );
  }
}
