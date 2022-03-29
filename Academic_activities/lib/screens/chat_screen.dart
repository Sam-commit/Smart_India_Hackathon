import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:academic_activities/functioning/networking.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final fieldText = TextEditingController();

  void clearText() {
    fieldText.clear();
  }

  var data;
  Future sol() async{
    data = await fetch_chat();
  }

  String message = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        padding: const EdgeInsets.only(left: 18, right: 18, top: 10, bottom: 8),
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: Color(0xFFE0E5FF),
              borderRadius: BorderRadius.circular(12)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: FutureBuilder(
                  builder: (context, snapshots) {
                    if (snapshots.connectionState == ConnectionState.done) {
                      return ListView.builder(
                        itemCount: data["messages"].length,
                          itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: (data["messages"][index]["by"]=="Admin") ? Colors.blue : Colors.white,
                                borderRadius: BorderRadius.circular(10)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 8),
                                child: Text(data["messages"][index]["message"],style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                              ),
                            ),
                          );
                          });
                    }

                    return Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  future: sol(),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextField(
                        onChanged: (value){
                            message = value;
                        },
                        controller: fieldText,
                      ),
                    ),
                  ),
                  IconButton(onPressed: ()async{

                    await send_chat(message);
                    clearText();
                    setState(() {});

                  }, icon: Icon(Icons.send,color: Colors.blue,size: 30,))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
