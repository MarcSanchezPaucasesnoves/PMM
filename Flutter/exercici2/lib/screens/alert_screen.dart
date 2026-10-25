import 'package:flutter/material.dart';
 
class AlertScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pàgina alerta i diàlegs"),),
      body: Center(
        child: ElevatedButton(
          child: Text("Botó alerta!"),
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.white,
            backgroundColor: Colors.blue,
            shape: StadiumBorder()
          ),
          onPressed: () => _mostrarAlert(context),
        ),
      ),
    );
  }

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: alertDialog
    );
  }
}


Widget alertDialog(BuildContext context) {
  return AlertDialog(
    title: Text("Títol de alerta"),
    content: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("Aquest és el contingut de alerta personalitzable"),
        FlutterLogo(size: 50.0)
      ],
    ),
    actions: [
      TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("Cancel·lar")),
      TextButton(onPressed: () => Navigator.of(context).pop(), child: Text("Ok"))
    ],
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
  );

}
