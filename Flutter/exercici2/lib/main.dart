import 'package:exercici2/routes/app_routes.dart';
import 'package:exercici2/screens/home_temp.dart';
import 'package:exercici2/screens/screens.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Components',
      // home: HomeScreen(),
      routes: getRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print("Hem anat a: ${settings.name}");
        return MaterialPageRoute(
          builder: (BuildContext context) => AlertScreen()
        );
      },
    );
  }
}