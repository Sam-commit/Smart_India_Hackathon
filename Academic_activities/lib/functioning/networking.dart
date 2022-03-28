import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String url ="https://clumsy-coders-sih.herokuapp.com/";

Future get_hackathons()async{

  List<dynamic>hackathon_data;

  print("Hello");
  http.Response response =await  http.get(Uri.parse("https://clumsy-coders-sih.herokuapp.com/hackathons/getAll"));
  print(response.statusCode);
  print(response.body);

  return hackathon_data = jsonDecode(response.body);

}