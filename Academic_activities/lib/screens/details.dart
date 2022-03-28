import 'package:academic_activities/main.dart';
import 'package:academic_activities/screens/log_in.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:academic_activities/functioning/networking.dart';
class Details extends StatefulWidget {
  final String name,email,password;
  const Details({Key? key, required this.name, required this.email, required this.password}) : super(key: key);


  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {


   String? _chosenValue;
    String gender='Gender',education='Education',contact=' ',age=' ';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.only(top: 55,left: 20,right: 20),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            Center(
              child: Text("Tell us more about yourself",style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),),
            ),
            SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width/2,
              child: Center(
                child: Text("A little more detail help us to provide you with precise content",
                  textAlign: TextAlign.center,
                  maxLines: 2,
                  style: TextStyle(
                    fontSize: 20,
                  ),),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30,bottom: 10),
              child: TextField(
                onChanged: (text)
                {
                  contact=text;
                },
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E5FF),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: '  Contact Number',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 10),
              child: TextField(
                onChanged: (text)
                {
                  age=text;
                },
                decoration: InputDecoration(
                  fillColor: Color(0xFFE0E5FF),
                  filled: true,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12)
                  ),
                  hintText: '  Age',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 10),
              child: DecoratedBox(

                decoration: ShapeDecoration(
                  color: Color(0xFFE0E5FF), shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide()
                )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
                  child: DropdownButton<String>(


                    isExpanded: true,
                    focusColor:Colors.white,
                    value: _chosenValue,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor:Colors.black,
                    items: <String>[
                      'Gender',
                      'Others',
                      'Male',
                      'Female',

                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(color:Colors.black),),
                      );
                    }).toList(),
                    hint:Text(
                      '$gender',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                      ),
                    ),
                    onChanged: (String? value) {
                      setState(() {
                        gender = value!;
                      });
                    },
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15,bottom: 10),
              child: DecoratedBox(

                decoration: ShapeDecoration(
                    color: Color(0xFFE0E5FF), shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide()
                )
                ),
                child: Padding(
                  padding: const EdgeInsets.only(left: 15,top: 8,bottom: 8,right: 8),
                  child: DropdownButton<String>(

                    isExpanded: true,
                    focusColor:Colors.white,
                    value: _chosenValue,
                    //elevation: 5,
                    style: TextStyle(color: Colors.white),
                    iconEnabledColor:Colors.black,
                    items: <String>[
                      'Education',
                      '10th',
                      '12th',
                      'Graduation',

                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value,style:TextStyle(color:Colors.black),),
                      );
                    }).toList(),
                    hint:Text(
                      '$education',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                      ),
                    ),

                    onChanged: (String? value) {
                      setState(() {
                        education = value!;
                      });
                    },
                  ),
                ),
              ),
            ),

            // TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(
            //   color: Colors.grey.shade600,
            // ),)),
            SizedBox(
              height: 15,
            ),
            ElevatedButton(onPressed: ()async{
              await sign_up(widget.name,  age, gender, contact, widget.password, education, widget.email);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>MainPage()));
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
                    child: Center(child: Text("Sign Up",style: TextStyle(
                      fontSize: 28,
                    ),)))),
            SizedBox(
              height: 25,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Text("Already have an account?",style: TextStyle(color: Colors.black),),
                TextButton( onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>LogIn()));
                },
                  child: Text("Sign in")
                  ,),

              ],
            )
          ],
        ),
      ),
    );
  }
}
