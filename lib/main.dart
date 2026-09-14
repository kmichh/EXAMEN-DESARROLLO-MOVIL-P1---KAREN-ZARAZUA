import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/details/screens/detail_screen.dart';
import 'package:mi_primera_app/features/home/models/activity.dart';
import 'package:mi_primera_app/features/home/widgets/activity_card.dart';
import 'package:mi_primera_app/features/home/widgets/interactive_activity_card.dart';
import 'package:mi_primera_app/features/home/screens/home_screen.dart';


//documentación: 
//https://api.flutter.dev/flutter/material/AppBar/actions.html
//https://api.flutter.dev/flutter/material/CircleAvatar-class.html
//https://api.flutter.dev/flutter/material/Divider-class.html
//https://api.flutter.dev/flutter/rendering/MainAxisAlignment.html
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fitness Tracker',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: const MyHomePage(),
    );
  }
}



