import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    return _ContadorPageState();
  }
}

class _ContadorPageState extends State<ContadorPage> {
  final _estil = TextStyle(fontSize: 24);
  int _contador = 0;
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contador amb Stateful"),
        centerTitle: true,
        backgroundColor: Colors.blue,
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight(1000)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Nombre de clicks:", style: _estil),
            Text("$_contador", style: _estil)
          ],
        ),
      ),
      floatingActionButton: _crearBotons(),
    );
  }


  Widget _crearBotons(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(width: 30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero, color: Colors.white), onPressed: _restart, backgroundColor: Colors.blue),
        Expanded(child: SizedBox()),
        FloatingActionButton(child: Icon(Icons.remove, color: Colors.white), onPressed: _restar, backgroundColor: Colors.blue),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add, color: Colors.white), onPressed: _sumar, backgroundColor: Colors.blue),
      
      ],
    );
  }

  void _sumar(){
    setState(() {
      _contador++;
    });
  }

  void _restar(){
    setState(() {
      _contador--;
    });
  }

  void _restart(){
    setState(() {
      _contador = 0;
    });
  }
}