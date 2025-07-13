import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              Card(
                //margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: const Text(
                    'Crossing Catalogue lets you take quizzes to find out which Animal Crossing: New Horizons villager is most like you or is best suited to your current island, you can also view a list to learn about available villagers and keep track of your progress in the game',
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ),
              SizedBox(height: 8),
              Card(
                // margin: EdgeInsets.all(16),
                child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      const Text('Developers:', style: TextStyle(fontSize: 16)),
                      const Text(
                        'Francisco Galeno - Matías Oyarzún',
                        style: TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 8),
                      const Text('Contacts:', style: TextStyle(fontSize: 16)),
                      const Text(
                        'fgaleno21@alumnos.utalca.cl',
                        style: TextStyle(fontSize: 16),
                      ),
                      const Text(
                        'moyarzun22@alumnos.utalca.cl',
                        style: TextStyle(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
