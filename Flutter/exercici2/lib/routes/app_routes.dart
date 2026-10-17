import 'package:exercici2/screens/alert_screen.dart';
import 'package:exercici2/screens/avatar_screen.dart';
import 'package:exercici2/screens/home_screen.dart';
import 'package:flutter/material.dart';


Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
  "/" : (BuildContext context) => HomeScreen(),
  "alert" : (BuildContext context) => AlertScreen(),
  "avatar" : (BuildContext context) => AvatarScreen(),
  "card" : (BuildContext context) => AvatarScreen(),
  "animatedContainer" : (BuildContext context) => AvatarScreen(),
  "inputs" : (BuildContext context) => AvatarScreen(),
  "slider" : (BuildContext context) => AvatarScreen(),
  "list" : (BuildContext context) => AvatarScreen(),
  
  };
}