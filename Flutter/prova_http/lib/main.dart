import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http show get;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Peticio Http'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              //peticioHttp();
              //peticioHttpJsonDecode();
              
            }, 
            child: Text("Petició HTTP")),
        ),
      ),
    );
  }

  void peticioHttp() {
    final url = Uri.https("reqres.in", "api/users", {"page": "2"});
    http.get(url).then((response) => print(response.body));
  }

  void peticioHttpJsonDecode() {
    final url = Uri.https("reqres.in", "api/users", {"page": "2"});

    http.get(url).then((response) {
      final body = jsonDecode(response.body);
      print("Page: ${body["data"][0]["id"]}");
    });
  }
}