import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  final estil = TextStyle(fontSize: 24);
  int contador = 0;

  HomePage({super.key});

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
            Text("$contador", style: estil)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          contador++;
        },
        child: Icon(Icons.add),
      )
    );
  }
}