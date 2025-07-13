import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              const Text(
                'Crossing Catalogue lets you take quizzes to find out which Animal Crossing: New Horizons villager is most like you or is best suited to your current island, you can also view a list to learn about available villagers and keep track of your progress in the game',
              ),
              SizedBox(height: 12),
              const Text('Developers:\nFrancisco Galeno\nMatías Oyarzún'),
              const Text(
                'Contacts:\nfgaleno21@alumnos.utalca.cl\nmoyarzun22@alumnos.utalca.cl',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
