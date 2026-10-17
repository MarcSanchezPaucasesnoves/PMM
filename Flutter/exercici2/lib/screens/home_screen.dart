import 'package:exercici2/providers/menu_provider.dart';
import 'package:exercici2/screens/alert_screen.dart';
import 'package:exercici2/utils/icon_string_util.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _llista(),
    );
  }


  List<Widget> _llistaElements(BuildContext context, List<dynamic>? data) {
    final List<Widget> elements = [];

    data?.forEach((element) {
      final widgetTemp = ListTile(
        title: Text(element["texte"]),
        leading: getIcon(element["icona"]),
        trailing: Icon(Icons.keyboard_arrow_right, color: Colors.blue),
        onTap: (){
          // final route = MaterialPageRoute(builder: (context){
          //   return AlertScreen();
          // });

          // final route = MaterialPageRoute(builder: (context) => AlertScreen());
          // Navigator.push(context, route);

          Navigator.pushNamed(context, element["ruta"]);
        },
      );
      elements..add(widgetTemp)
      ..add(Divider());
    });

    return elements;
  }

  Widget _llista() {
    // menuProvider.carregarDades().then((data) { print("Llista: "); print(data); });

    return FutureBuilder(
      future: menuProvider.carregarDades(),
      initialData: [], 
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot){
        return ListView(
        children: _llistaElements(context, snapshot.data),
        );
      },
    );


  

}

}
