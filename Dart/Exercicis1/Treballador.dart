abstract class Treballador {
  int id;
  String nom;
  double sou, retencio;

  Treballador({required this.id, required this.nom, required this.sou, required this.retencio});

  void imprimirNom(){print(nom);}

  void souNet(){print(sou - retencio);}
}