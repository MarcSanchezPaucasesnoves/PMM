import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePageTemp extends StatelessWidget {
  final elements = ["Element 1", "Element 2", "Element 3", "Element 4"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temp"),
      ),
      body: ListView(
        children: _crearElementsCurt(),
      ),
    );
  }

  List<Widget> _crearElements(){
    List<Widget> llista = [];

    elements.forEach((element) {
      llista.add(ListTile(
        title: Text(element),
      ));
      llista.add(Divider());
    });

    return llista;
  }

  List<Widget> _crearElementsCurt(){
    var widgets = elements.map((element){
      return Column(
        children: [
          ListTile(
            title: Text(element),
            subtitle: Text("Subtitle"),
            leading: Icon(Icons.accessible_forward_rounded),
            trailing: Icon(Icons.workspace_premium_rounded),
            onTap: () {},
          ),
          Divider(),
        ],
      );
    });

    return widgets.toList();
  }
}