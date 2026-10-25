import 'package:flutter/material.dart';
import '../screens/screens.dart';


Map<String, WidgetBuilder> getRoutes(){
  return <String, WidgetBuilder>{
  "/" : (BuildContext context) => HomeScreen(),
  "alert" : (BuildContext context) => AlertScreen(),
  "avatar" : (BuildContext context) => AvatarScreen(),
  "card" : (BuildContext context) => CardScreen(),
  "animatedContainer" : (BuildContext context) => AnimatedContainerScreen(),
  "inputs" : (BuildContext context) => InputScreen(),
  "slider" : (BuildContext context) => SliderScreen(),
  "list" : (BuildContext context) => LlistaScreen(),
  
  };
}