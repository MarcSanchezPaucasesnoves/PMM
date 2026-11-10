import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:prova_riverpod/counter_riverpod.dart';

void main() => runApp(ProviderScope(child: const MyApp()));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: CounterScreen(),
    );
  }
}

class CounterScreen extends ConsumerWidget {
  const new({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: Center(child: Text("$count"),),
      ),
      floatingActionButton: Row(children: [
        SizedBox(width: 20,),
        FloatingActionButton(
          onPressed: () {
            ref.read(counterProvider.notifier).reset();
          }, 
          child: Icon(Icons.exposure_zero),
        ),
        Expanded(child: SizedBox(),),
        FloatingActionButton(
          onPressed: () => ref.read(counterProvider.notifier).decrement(), 
          child: Icon(Icons.exposure_minus_1),
        ),
        SizedBox(width: 10,),
        FloatingActionButton(
          onPressed: () => ref.read(counterProvider.notifier).increment(), 
          child: Icon(Icons.plus_one),
        ),
      ],),
    );
  }
}