import 'package:flutter/material.dart';
import '../screens/screens.dart'; // Exporta totes les pantalles des d'un index

class AppRoutes {
  static const initialRoute = '/';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      '/': (BuildContext context) => const HomeScreen(),
      'alert': (BuildContext context) => const AlertScreen(),
      'avatar': (BuildContext context) => const AvatarScreen(),
      'card': (BuildContext context) => const CardScreen(),
      'animatedContainer': (BuildContext context) => const AnimatedContainerScreen(),
      'inputs': (BuildContext context) => const InputsScreen(),
      'slider': (BuildContext context) => const SliderScreen(),
      'list': (BuildContext context) => const ListViewScreen(),
    };
  }

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const AlertScreen(),
    );
  }
}