import 'package:flutter/material.dart';
import '../screens/screens.dart';


Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
  "/" : (BuildContext context) => HomeScreen(),
  "alert" : (BuildContext context) => AvatarScreen(),
  "avatar" : (BuildContext context) => AvatarScreen(),
  "card" : (BuildContext context) => CardScreen(),
  "animatedContainer" : (BuildContext context) => AvatarScreen(),
  "inputs" : (BuildContext context) => AvatarScreen(),
  "slider" : (BuildContext context) => AvatarScreen(),
  "list" : (BuildContext context) => AvatarScreen(),
  
  };
}