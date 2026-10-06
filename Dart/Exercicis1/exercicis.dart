import 'dart:ffi';
import 'dart:math';

import 'Administratiu.dart';
import 'Comercial.dart';

main(){
  // Exercici 1

  print("Exercici 1");
  List<int> nombres = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

  for (int nombre in nombres) {
    if (nombre < 5) {
      print(nombre);
    }
  }

  // Exercici 2
  print("");
  print("Exercici 2");
  List<int> nombres2 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
  List<int> nombresComuns = [];

  for (int nombre1 in nombres) {
    if(nombres2.contains(nombre1) && !nombresComuns.contains(nombre1)) nombresComuns.add(nombre1);
  }
  print(nombresComuns);


  // Exercici 3
  print("");
  print("Exercici 3");
  String posiblePalindrom = "oro";

  String invertirString(String oracio){
    String oracioInvertida = "";
    for (int i = oracio.length - 1; i >= 0; i--) {
      String lletra = oracio[i];
      oracioInvertida += lletra;
    }
    return oracioInvertida;
  }

  String posiblePalindromGirat = invertirString(posiblePalindrom);

  print("Paraula sense girar: $posiblePalindrom");
  print("Paraula girada: $posiblePalindromGirat");

  posiblePalindrom == posiblePalindromGirat ? print("És palindrom.") : print("No és palindrom.");



  //Exercici 4
  print("");
  print("Exercici 4");
  List<int> llistaInt1 = [64, 95, 79, 54, 59, 45, 56, 53, 46, 98];
  List<int> llistaInt2 = [40, 80, 11, 4, 100, 20, 34, 84, 64, 30];
  List<int> llistaInt3 = [92, 58, 86, 54, 7, 22, 21, 91, 85, 53];


  int tornarMesGran(List<int> llistaA, List<int> llistaB, List<int> llistaC){
    llistaA.sort();
    llistaB.sort();
    llistaC.sort();

    int a = llistaA[llistaA.length-1];
    int b = llistaB[llistaB.length-1];
    int c = llistaC[llistaC.length-1];

    if(a > b) return (a > c) ? a : c;
    else return (b > c) ? b : c;

  }

  print(tornarMesGran(llistaInt1, llistaInt2, llistaInt3));


  // Exercici 5
  print("");
  print("Exercici 5");
  print(llistaInt1);
  for (int nombre in llistaInt1) {
    if(nombre % 2 == 0) print(nombre);
  }


  // Exercici 6
  print("");
  print("Exercici 6");
  int nombreAleatori = Random().nextInt(101);
  print(nombreAleatori);

  bool esPrimo(int nombre){
    bool esPrimo = true;
    for (int i = 2; i < nombre; i++) {
      if(nombre % i == 0){
        esPrimo = false;
        break;
      }
    }
    return esPrimo;
  }

  esPrimo(nombreAleatori) ? print("És un nombre primer") : print("No és un nombre primer");

  // Exercici 7
  print("");
  print("Exercici 7");

  String invertirOracio(String oracio){
  
    return oracio.split(" ").reversed.join(" ");
  }

  print(invertirOracio("Oració molt molt llarga"));


  // Exercici 8
  print("");
  print("Exercici 8");

  String generarContrasenya(int longitud){
    String contrasenya = "";
    for (int i = 0; i < longitud; i++) {
      int nombreAleatoriAscii = Random().nextInt(95) + 32;

      contrasenya += String.fromCharCode(nombreAleatoriAscii);
    }
    return contrasenya;
  }

  print("Contrasenya: " + generarContrasenya(10));


  // Exercici 9
  print("");
  print("Exercici 9");

  void generarCuadricula(int tamany){
    String fila = ("■ " * tamany) + "\n";
    print(fila * tamany);
  }

  generarCuadricula(3);

  // Exercici 10
  print("");
  print("Exercici 10");
  Administratiu maria = new Administratiu(id: 0, nom: "María", sou: 1237, retencio: 112);
  Comercial aina = new Comercial(id: 1, nom: "Aina", sou: 2000, retencio: 150, ventes: 212, comisio: 34.2);

  maria.imprimirNom();
  maria.souNet();
  aina.imprimirNom();
  aina.souNet();

  // Exercici 11
  print("");
  print("Exercici 11");
  
  List<int> llistaPrimers(int nombre){
    List<int> nombresPrimers = [];
    for (int i = 2; nombresPrimers.length < nombre; i++) {
      
      if(esPrimo(i)) nombresPrimers.add(i);
    }
    return nombresPrimers;
  }
  print(llistaPrimers(10));
}
