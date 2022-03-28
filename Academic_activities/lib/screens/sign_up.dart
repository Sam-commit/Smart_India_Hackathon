import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:academic_activities/screens/details.dart';
class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
    String name='',email='',password='',cpass='';

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
                child: Text("Create Account",style: TextStyle(
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
                  child: Text("Sign Up to get started",
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
                  onChanged: (text){
                    name=text;
                    print(text);
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '  Full Name',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: TextField(

                  onChanged: (text){
                    email=text;
                    print(text);
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '  Email',
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 10),
                child: TextField(
                  onChanged: (text){
                    password=text;
                    print(text);
                  },
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),
                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '  Password',
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(top: 15,bottom: 20),
                child: TextField(
                  onChanged: (value ){
                      cpass = value;
                  },
                  decoration: InputDecoration(
                    fillColor: Color(0xFFE0E5FF),

                    filled: true,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12)
                    ),
                    hintText: '  Confirm Password',
                  ),
                ),
              ),

              Text((password == cpass ) ? "" : "Confirm password doesn't match",style: TextStyle(color: Colors.red),),

              // TextButton(onPressed: (){}, child: Text("Forgot Password?",style: TextStyle(
              //   color: Colors.grey.shade600,
              // ),)),
             SizedBox(
               height: 15,
             ),
              ElevatedButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => Details(name: name,email: email,password: password,) ));
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
                      child: Center(child: Text("Next",style: TextStyle(
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
                    Navigator.pop(context);
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
