import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

const String url ="https://clumsy-coders-sih.herokuapp.com/";

Future get_data(String name)async{

  List<dynamic>data;

  //print("Hello");
  http.Response response =await  http.get(Uri.parse("https://clumsy-coders-sih.herokuapp.com/$name/getAll"));
  // print(response.statusCode);
  // print(response.body);

  return data = jsonDecode(response.body);

}