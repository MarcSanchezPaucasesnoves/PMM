import 'package:flutter/material.dart';


class InputScreen extends StatefulWidget {

  @override
  _InputScreenState createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  String _nom = "";
  String _email = "";
  String _data = "";
  TextEditingController _inputFieldDataController = TextEditingController();
  List<String> _paisos = ["Andorra", "Anglaterra", "Dinamarca", "Espanya", "França"];
  String _pais = "Andorra";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inputs"),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPassword(),
          Divider(),
          _crearData(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona()
        ],
      ),
    );
  }

  TextField _crearInput() {
    return TextField(
      // autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        counter: Text("Lletres ${_nom.length}"),
        hintText: "Nom de l\'usuari",
        labelText: "Nom",
        helperText: "Posi el nom complet",
        suffixIcon: Icon(Icons.accessibility),
        icon: Icon(Icons.account_circle),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (valor){
        setState(() {
          _nom = valor;
          // print(_nom);
        });
      },
    );
  }

  Widget _crearPersona() {
    return ListTile(
      title: Text("Nom $_nom"),
      subtitle: Text("Correu $_email"),
      trailing: Text(_pais),
    );
  }


  TextField _crearEmail() {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        hintText: "Correu electrònic",
        labelText: "Correu elecrònic",
        suffixIcon: Icon(Icons.alternate_email),
        icon: Icon(Icons.email),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (valor) =>
        setState(() {
          _email = valor;
        })
    );
  }




  TextField _crearPassword() {
    return TextField(
      obscureText: true,
      decoration: InputDecoration(
        hintText: "Password",
        labelText: "Password",
        suffixIcon: Icon(Icons.lock_open),
        icon: Icon(Icons.lock),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onChanged: (valor){
        // setState(() {
        //   _nom = valor;
        //   // print(_nom);
        // });
      },
    );
  }


  TextField _crearData(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDataController,
      decoration: InputDecoration(
        hintText: "Data naixement",
        labelText: "Data naixement",
        suffixIcon: Icon(Icons.perm_contact_calendar),
        icon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        )
      ),
      onTap:() {
        FocusScope.of(context).requestFocus(new FocusNode());
        _seleccionaData(context);
      },
    );
  }


  void _seleccionaData(BuildContext context) async{
    DateTime? picked;
    picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2020),
      lastDate: DateTime(2030),
      locale: Locale("es", "ES"),
    );
    if (picked != null) {
      setState(() {
        _data = picked.toString();
        _inputFieldDataController.text = _data;
      });
    }
  }

  Widget _crearDropdown() {
    return Row(
      children: [
        Icon(Icons.language),
        SizedBox(width: 30.0),
        Expanded(
          child: DropdownButton(
            hint: Text(_pais),
            items: getOptionDropdown(),
            onChanged: (opcio){
              // print(opcio);
              setState(() {
                _pais = opcio as String;
              });
            },
          ),
        ),
      ],
    );
  }

  List<DropdownMenuItem<String>> getOptionDropdown() {
    List<DropdownMenuItem<String>> llista = [];
    _paisos.forEach((pais) {
      llista.add(DropdownMenuItem(
        child: Text(pais),
        value: pais,
      ));
    });
    return llista;
  }
}