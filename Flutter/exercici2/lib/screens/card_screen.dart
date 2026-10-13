import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Targetes (Cards)')),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          _cardTipus1(),
          const SizedBox(height: 16),
          _cardTipus2(),
        ],
      ),
    );
  }

  Widget _cardTipus1() {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_album_rounded, color: Colors.deepPurple),
            title: Text('Títol de la Targeta'),
            subtitle: Text('Exemple de targeta estàndard de Material 3 amb botons d\'acció integrats.'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: const Text('Cancel·lar')),
              FilledButton.tonal(onPressed: () {}, child: const Text('D\'acord')),
              const SizedBox(width: 8),
            ],
          )
        ],
      ),
    );
  }

  Widget _cardTipus2() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
        boxShadow: const [
          BoxShadow(color: Colors.black12, blurRadius: 8, offset: Offset(0, 4))
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: Column(
          children: [
            const FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage('https://picsum.photos/id/1015/600/300'),
              fadeInDuration: Duration(milliseconds: 200),
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Container(
              padding: const EdgeInsets.all(12),
              child: const Text('Imatge carregada en xarxa amb efecte FadeIn'),
            )
          ],
        ),
      ),
    );
  }
}