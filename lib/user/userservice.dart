import 'dart:convert';
import 'package:flutter/material.dart';

import 'package:api_1/model/model.dart';
import 'package:http/http.dart' as http;

getuser() async {
  var response =
      await http.get(Uri.https("jsonplaceholder.typicode.com", "users"));
  var jsonData = jsonDecode(response.body);

  List<UserModel> userlist = [];

  for (var j in jsonData) {
    UserModel user = UserModel(
      id: j['id'],
      name: j['name'],
      username: j['username'],
      email: j['email'],
      city: j['address']['city'],
      street: j['address']['street'],
    );
    userlist.add(user);
  }
  return userlist;
}
