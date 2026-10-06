import 'Treballador.dart';

class Comercial extends Treballador{

  int ventes;
  double comisio;
  
  Comercial({required super.id, required super.nom, required super.sou, required super.retencio, required this.ventes, required this.comisio});


}