import 'package:academic_activities/main.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sign_up.dart';
import 'package:academic_activities/functioning/networking.dart';
class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  String email=' ',password=' ';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: EdgeInsets.only(top: 70),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [

              Center(
                child: Text("Hello Again",style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 35,
                ),),
              ),
              SizedBox(
                height: 10,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width/2,
                child: Center(
                  child: Text("Welcome Back you've been missed",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                    fontSize: 20,
                  ),),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  onChanged: (text)
                  {
                    email=text;
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),
                    filled: true,
                    border: OutlineInputBorder(
                     borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '   Enter Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: TextField(
                  onChanged: (text)
                  {
                    password=text;
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '   Password',
                  ),
                ),
              ),
              // TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(
              //   color: Colors.grey.shade600,
              // ),)),
              SizedBox(
                height: 30,
              ),
             ElevatedButton(onPressed: ()async{
              await log_in(email,password);
              Navigator.push(context, MaterialPageRoute(builder: (context)=> MainPage()));
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
                 child: Center(child: Text("Sign In",style: TextStyle(
                   fontSize: 28,
                 ),)))),
              SizedBox(
                height: 25,
              ),
              Row(
                  children: <Widget>[
                    Expanded(
                        child: Divider(
                          indent: 25,
                          endIndent: 10,
                          thickness: 1.5,
                        )
                    ),

                    Text("OR"),

                    Expanded(
                        child: Divider(
                          indent: 10,
                          endIndent: 25,
                          thickness: 1.5,

                        )
                    ),
                  ]
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(onPressed: (){

              },
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        )
                    ),
                    backgroundColor: MaterialStateProperty.all(Color(0xFFE0E5FF)),
                  ),
                  child: SizedBox(
                      height: 60,
                      width: MediaQuery.of(context).size.width/1.2,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(FontAwesomeIcons.google,color: Colors.grey,),
                          SizedBox(width: 8),
                          Text("Continue with google",style: TextStyle(color: Colors.black),),
                        ],
                      )
                  )),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Text("Not a member?",style: TextStyle(color: Colors.black),),
                  TextButton( onPressed: () { 
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>SignUp()));
                  },
                  child: Text("Register Now")
                    ,),

                ],
              )
            ],
          ),
        ),
      );
  }
}
