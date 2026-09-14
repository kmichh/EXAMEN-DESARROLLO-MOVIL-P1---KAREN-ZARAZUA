import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mi Perfil'),
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            // CircleAvatar para el ícono del perfil y radius me lo recorta
            const CircleAvatar(
              radius: 65,
              backgroundColor: Colors.deepPurple,
              child: Icon(Icons.person, size: 75, color: Colors.white),
            ),
            const SizedBox(height: 12),
            const Text(
              'Karen Zarazúa Hdz.',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // divider para línea sutil 
            const Divider(thickness: 1, height: 1),
            const SizedBox(height: 20),

            // alinear
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        children: const [
                          Icon(Icons.fitness_center, size: 32, color: Colors.deepPurple),
                          SizedBox(height: 8),
                          Text(
                            'Entrenamientos\ncompletados: 15',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                const SizedBox(width: 9),
                Expanded(
                  child: Card(
                    elevation: 4,
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Column(
                        children: const [
                          Icon(Icons.history, size: 32, color: Colors.deepPurple),
                          SizedBox(height: 4),
                          Text(
                            'Ver estadísticas de los últimos 30 días\n\n',
                            textAlign: TextAlign.center,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}