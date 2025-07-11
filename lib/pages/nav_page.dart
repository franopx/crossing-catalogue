
import 'package:crossing_catalogue/pages/collection_page.dart';
import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/quiz_page.dart';
import 'package:crossing_catalogue/pages/villager_catalogue_page.dart';
import 'package:crossing_catalogue/services/network_check.dart';
import 'package:crossing_catalogue/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';
import 'package:crossing_catalogue/domain/quiz_data/island_quiz.dart';
import 'package:crossing_catalogue/domain/quiz_data/personality_quiz.dart';

class NavPage extends StatefulWidget{
  const NavPage({super.key, required this.title});

  final String title;


  @override
  State<StatefulWidget> createState() {
    return NavPageState();
  }
}

class NavPageState extends State<NavPage> {
  
  var logger = Logger();
  String currentTitle = 'Crossing Catalogue';
  int currentPage = 0;

  bool isOnline = false;

  Future<bool> onlineCheck() async {
    return await NetworkStatus.isOnline;
  }

  Widget buildContent() {
    switch(currentPage) {
      case 1:
        return QuizPage(
        title: 'test de personalidad',
        questions: personalityQuestions,
      );

      case 2: 
        setState(() {
          currentTitle = 'Villagers';
        });
        return VillagerCataloguePage(title: 'Catalogue');
      case 3:
        setState(() {
          currentTitle = 'Collection';
        });
        return CollectionPage(title: 'Collection');
      default: 
        setState(() {
          currentTitle = 'Crossing Catalogue';
        });
        return HomePage(title: 'Crossing Catalogue');
    }
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(currentTitle),
      backgroundColor: Colors.blue,
    ),
    body: Stack(
      children: [
        // Tu contenido principal
        Positioned.fill(
          child: buildContent(), // Asegúrate que NO sea otro Scaffold
        ),

        // Barra de "NO INTERNET" en la parte inferior
        if (!isOnline)
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(8),
              child: Text(
                'NO INTERNET',
                style: TextStyle(color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ),
      ],
    ),
    bottomNavigationBar: BottomNavBar(
      currentIndex: currentPage,
      onTabSelected: onNavTap,
    ),
  );
}

  void onNavTap(value) {
    setState(() {
      currentPage = value;
    });
  }

}


