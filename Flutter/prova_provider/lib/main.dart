import 'package:flutter/material.dart';
import 'package:prova_provider/provider/counter_provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';

void main() {
  runApp(AppState());
}

class AppState extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Counter())
      ],
      child: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final counter = Provider.of<Counter>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Url launcher",
      home: Scaffold(
        appBar: AppBar(title: Text("URL Launcher"),),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed:() => _obreUrl(), 
                child: Text("Obri URL")
              ),
              ElevatedButton(
                onPressed:() => _peticioHttp(), 
                child: Text("Petició URL")
              ),
              Column(
                children: [
                  Text("${counter.count}")
                ],
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){counter.count++;}, child: Icon(Icons.add),),
      ),
    );
  }

  Future<void> _obreUrl() async{
    final Uri url = Uri.parse("https://paucasesnovescifp.cat");
    if (!await launchUrl(url, mode: LaunchMode.inAppBrowserView)) {
      throw Exception("Could not launch url");
    }
  }

  Future<void> _peticioHttp() async{
    final Uri url = Uri.https("reqres.in", "api/users", {"page": "2"});
    http.get(url).then((resposta) => print(resposta.body));
  }
}



