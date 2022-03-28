import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class EventPage extends StatefulWidget {
  EventPage({required this.data});

  Map<dynamic, dynamic> data;

  @override
  _EventPageState createState() => _EventPageState();
}

class _EventPageState extends State<EventPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            alignment: Alignment.center,
            clipBehavior: Clip.none,
            children: [
              Container(
                margin: EdgeInsets.only(
                    bottom: MediaQuery.of(context).size.width / 8),
                decoration: BoxDecoration(
                    color: Color(0xFF5264C6),
                  image: DecorationImage(image: AssetImage("images/img2.jpg"),fit: BoxFit.fill)
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height / 3.5,
              ),
              Positioned(
                top: MediaQuery.of(context).size.height/7,
                child: Padding(
                  padding: const EdgeInsets.only(left: 30,right: 30),
                  child: Text(widget.data["name"],style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.center,),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(child: Text("Organized By:- ")),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 10,left: 40,right: 40),
            child: Center(child: Text(widget.data["organizedBy"],style: TextStyle(fontSize: 18,color: Colors.blue),textAlign:TextAlign.center,)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Center(child: Text("Overview Of The Hackathon",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
          ),
          
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF6981FF).withOpacity(0.5),
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.calendar),
                                SizedBox(width: 10,),
                                Text("Registration Deadline"),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 10),
                            child: Text(widget.data["hackathonRegEndDate"]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10,),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.user),
                                SizedBox(width: 10,),
                                Text("Min Team Size"),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 80,top: 10),
                            child: Text(widget.data["minTeamSize"].toString()),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10,),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.peopleGroup),
                                SizedBox(width: 10,),
                                Text("Max Team Size"),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 80,top: 10),
                            child: Text(widget.data["maxTeamSize"].toString()),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.clock),
                                SizedBox(width: 10,),
                                Text("Start Date"),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 10),
                            child: Text(widget.data["hackathonStartDate"]),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10,top: 10),
                            child: Row(
                              children: [
                                FaIcon(FontAwesomeIcons.clock ),
                                SizedBox(width: 10,),
                                Text("End date"),

                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10,top: 10),
                            child: Text(widget.data["hackathonEndDate"]),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 17,right: 10,bottom: 10),
            child: ElevatedButton(onPressed: ()async{

                  await launch(widget.data["hackathonLink"]);

            },
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      )
                  ),
                  backgroundColor: MaterialStateProperty.all(Color(0xFF6981FF)),
                ),
                child: SizedBox(
                    height: 60,
                    width: MediaQuery.of(context).size.width/1.2,
                    child: Center(child: Text("Apply Now",style: TextStyle(
                      fontSize: 24,
                    ),)))),
          ),

        ],
      ),
    );
  }
}
