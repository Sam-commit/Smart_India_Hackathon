import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        elevation: 8,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width / 1.75,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                flex: 1,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25),
                      ),
                      child: Image(
                        image: AssetImage("images/img.jpg"),
                        fit: BoxFit.fill,
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Icon(Icons.bookmark_border,color: Colors.white,),
                            ],
                          ),
                          SizedBox(height: 5,),
                          Text(

                            "App - a - Thon",
                            style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("App - a - Thon",style: TextStyle(fontWeight: FontWeight.bold),),
                        Text("Organised By :- "),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Reg Ends:- 26 Dec"),
                          ],
                        )

                      ],
                    ),
                  ),
                ),
                flex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}