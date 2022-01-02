import 'dart:convert';
// import 'dart:html';

import 'package:api_1/model/model.dart';
import 'package:http/http.dart' as http;

searchbyid(int id) async {
  var response =
      await http.get(Uri.https('jsonplaceholder.typicode.com', 'users/$id'));
  var jsonData = jsonDecode(response.body);
  UserModel user = UserModel(
    id: jsonData['id'],
    name: jsonData['name'],
    email: jsonData['email'],
    username: jsonData['username'],
    street: jsonData['street'],
    city: jsonData['city'],
  );
  return user;
}
