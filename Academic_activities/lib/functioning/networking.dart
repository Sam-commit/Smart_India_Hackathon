import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String token = "";

const String url = "https://clumsy-coders-sih.herokuapp.com/";

Future get_data(String name) async {
  List<dynamic> data;

  //print("Hello");
  http.Response response = await http
      .get(Uri.parse("https://clumsy-coders-sih.herokuapp.com/$name/getAll"));
  // print(response.statusCode);
  // print(response.body);

  return data = jsonDecode(response.body);
}

Future sign_up(String name, String age, String gender, String number,
    String password, String education, String email) async {
  var client = http.Client();
  print(email);
  http.Response response = await http.post(
      Uri.parse('https://clumsy-coders-sih.herokuapp.com/users/signup'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "name": name,
        "email": email,
        "age": age,
        "gender": gender,
        "contactNo": number,
        "password": password,
        "education": education
      }));

  print(response.body);
  var data = jsonDecode(response.body);
  token = data["token"];
}

Future log_in(String email, String password) async {
  var client = http.Client();
  print(email);
  http.Response response = await http.post(
      Uri.parse('https://clumsy-coders-sih.herokuapp.com/users/login'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        "email": email,
        "password": password,
      }));

  print(response.statusCode);
  var data = jsonDecode(response.body);
  token = data["token"];
}

Future log_out() async {
  var client = http.Client();
  http.Response response = await http.post(
    Uri.parse('https://clumsy-coders-sih.herokuapp.com/users/logout'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    },
  );
  print(response.statusCode);
}

Future getUserProfile() async {
  print(token);
  http.Response response = await http.get(
    Uri.parse('https://clumsy-coders-sih.herokuapp.com/users/profile'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Authorization': 'Bearer $token',
    },
  );
  print(response.statusCode);
  print(response.body);
  var data = jsonDecode(response.body);
  return data;
}

Future fetch_chat() async {
  var chats;
  print("Hello");
  http.Response response = await http.get(
      Uri.parse("https://clumsy-coders-sih.herokuapp.com/chats/getAll"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      });

  chats = jsonDecode(response.body);
  return chats;
}

Future send_chat(String message ) async {

  print("Hello");
  http.Response response = await http.post(
      Uri.parse("https://clumsy-coders-sih.herokuapp.com/chats/addOne"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': 'Bearer $token',
      },
  body: jsonEncode({"message" : message}));
  print(response.body);
}