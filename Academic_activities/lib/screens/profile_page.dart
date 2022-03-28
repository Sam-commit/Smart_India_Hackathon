import 'package:academic_activities/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:academic_activities/functioning/networking.dart';
class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  var data;

  Future<void> getP() async {
  data = await getUserProfile();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xFF5264C6),
        child: FaIcon(FontAwesomeIcons.edit),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ), onPressed: () {  },
      ),
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
      body: FutureBuilder(
        builder: (context,snapshot)
            {
              if(snapshot.connectionState==ConnectionState.done)
                {
                  return Column(
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
                        child: Center(child: Text("${data["name"]}",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)

                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 10),
                        child: Center(child: Text("${data["education"]}",style: TextStyle(fontSize: 20),)),
                      ),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 30,vertical: 10),
                        child: Text("Personal Info"),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10,right: 10),
                        child: Column(
                          children: [
                            ListTile(
                              leading:FaIcon(FontAwesomeIcons.user,color: Colors.blue,),
                              title: Text("${data["name"]}"),
                            ),
                            ListTile(
                              leading:FaIcon(FontAwesomeIcons.envelope,color: Colors.blue,),
                              title: Text("${data["email"]}"),
                            ), ListTile(
                              leading:FaIcon(FontAwesomeIcons.phone,color: Colors.blue,),
                              title: Text("${data["contactNo"]}"),
                            ), ListTile(
                              leading:Icon(Icons.male,color: Colors.blue,size: 35,),
                              title: Text("${data["gender"]}"),
                            ), ListTile(
                              leading:FaIcon(FontAwesomeIcons.graduationCap,color: Colors.blue,),
                              title: Text("${data["education"]}"),
                            ),
                          ],
                        ),
                      ),
                      // Padding(
                      //   padding: const EdgeInsets.all(8.0),
                      //   child: Row(
                      //     children: [
                      //       FaIcon(FontAwesomeIcons.user,color: Colors.blue,),
                      //       Text("Samarth Goel"),
                      //     ],
                      //   ),
                      // )

                    ],
                  );
                }

              print(snapshot.connectionState);
              return Center(
                child: CircularProgressIndicator(),
              );


            },
          future: getP(),

    ),

    );
  }
}
