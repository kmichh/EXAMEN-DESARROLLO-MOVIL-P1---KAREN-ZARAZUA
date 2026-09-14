import 'package:flutter/material.dart';
import 'package:mi_primera_app/features/details/screens/profile/screens/profile_screens.dart';
import 'package:mi_primera_app/features/home/models/activity.dart';
import 'package:mi_primera_app/features/home/widgets/interactive_activity_card.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Activity> activityList = [
    Activity(title: "Pasos Diarios"),
    Activity(title: "Natación"),
    Activity(title: "Rutina de Fuerza"),
    Activity(title: "Sesión de Box"),
    Activity(title: "Desayuno"),
    Activity(title: "Comida")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: Text("Panel de Actividad Física"),
//actions
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // lo mismo de interactive_activity_card.dart para ir a DetailScreen
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ProfileScreen(),
                ),
              );
            },
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: activityList.length,
          itemBuilder: (context, index) {
            final currentActivity = activityList[index];
            return InteractiveActivityCard(activity: currentActivity);
          },
        ),
      ),
    );
  }
}