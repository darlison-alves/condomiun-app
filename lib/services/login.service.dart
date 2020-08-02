import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class LoginService {
  getByUsername(String username) async  {
    var response = await http.get("https://jsonplaceholder.typicode.com/users/1");
    var data = json.decode(response.body);
    print("response [x]");
    print(data);
    AlertDialog(
      title: Text("Dados do usuario:"),
      content: Text(data['name']),
    );
    print(response.statusCode);
  }
}