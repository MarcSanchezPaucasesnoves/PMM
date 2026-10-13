import 'package:flutter/material.dart';
import '../providers/menu_provider.dart';
import '../utils/icon_string_util.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Components Flutter M3')),
      body: _crearLlista(),
    );
  }

  Widget _crearLlista() {
    return FutureBuilder<List<dynamic>>(
      future: menuProvider.carregarDades(),
      initialData: const [],
      builder: (context, snapshot) {
        return ListView(
          children: _llistaElements(context, snapshot.data ?? []),
        );
      },
    );
  }

  List<Widget> _llistaElements(BuildContext context, List<dynamic> data) {
    final List<Widget> elements = [];
    for (var opt in data) {
      elements.add(
        ListTile(
          title: Text(opt['texte']),
          leading: getIcon(opt['icona']),
          trailing: const Icon(Icons.arrow_forward_ios_rounded, size: 16),
          onTap: () => Navigator.pushNamed(context, opt['ruta']),
        ),
      );
      elements.add(const Divider(height: 1));
    }
    return elements;
  }
}