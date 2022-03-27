
import 'package:flutter/material.dart';
import 'my_card.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
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
              child: Text("Hackathons",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
            ),
            Container(
              height: MediaQuery.of(context).size.height / 3.25,
              width: MediaQuery.of(context).size.width,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [MyCard(), MyCard()],
              ),
            )
          ],
        ),
      ),
    );
  }
}
