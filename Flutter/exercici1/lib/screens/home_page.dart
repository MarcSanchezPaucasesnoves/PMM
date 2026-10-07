import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estil = TextStyle(fontSize: 24);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre de clicks:", style: estil),
            Text("0", style: estil)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: onPressed),
    );
  }
}