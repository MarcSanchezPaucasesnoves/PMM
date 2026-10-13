import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({super.key});

  void _mostrarAlert(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text('Títol de l\'Alerta'),
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Aquest és el contingut del diàleg modal d\'alerta.'),
              SizedBox(height: 15),
              FlutterLogo(size: 50),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Cancel·lar'),
            ),
            FilledButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Acceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Alertes i Diàlegs')),
      body: Center(
        child: FilledButton(
          onPressed: () => _mostrarAlert(context),
          child: const Text('Mostrar Alerta'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }
}