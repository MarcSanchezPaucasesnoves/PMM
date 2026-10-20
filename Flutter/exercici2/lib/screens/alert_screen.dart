import 'package:flutter/material.dart';
 
class AlertScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("Pàgina Alert"),
      // ),
      // floatingActionButton: FloatingActionButton(
      //   child: Icon(Icons.arrow_back),
      //   onPressed: (){
      //     Navigator.pop(context);
      //   }),
      //   body: Center(
      //     child: ElevatedButton(
      //       onPressed: () => _mostrarAlert(BuildContext context), 
      //       child: Text("Hola"), 
      //       style: ElevatedButton.styleFrom(
      //         backgroundColor: Colors.amber,
      //         foregroundColor: Colors.white,
      //       ),
      //       ),
      //   ),
    );
  }
}

// void _mostrarAlert(BuildContext context){
//   showDialog(
//     barrierDismissible: true,
//     context: context, 
//     builder: (context) {
//       return AlertDialog()
//     });
// }