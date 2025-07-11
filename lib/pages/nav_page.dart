
import 'package:crossing_catalogue/pages/collection_page.dart';
import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/preferences_page.dart';
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

  Future<void> Function()? reloadCollection;
  bool isOnline = false;

  Future<void> onlineCheck() async {
      bool check = await NetworkStatus.isOnline;
    
    setState(() {
      isOnline = check;
    });
    
  }

  @override
  void activate() {
    onlineCheck();
    super.activate();
  }

  Widget buildContent() {
    switch(currentPage) {
      case 1:
        return isOnline ? 
          QuizPage(
            title: 'test de personalidad',
            questions: personalityQuestions,) : 
          Center(child: const Text('No internet, try again later.'));

      case 2: 
        setState(() {
          currentTitle = 'Villagers';
        });
        return isOnline ? 
          VillagerCataloguePage(title: 'Catalogue', isOnline: isOnline,) : 
          Center(child: const Text('No internet, try again later.'));
      case 3:
        setState(() {
          currentTitle = 'Collection';
        });
        return _buildCollection();
      default: 
        setState(() {
          currentTitle = 'Crossing Catalogue';
        });
        return HomePage(title: 'Crossing Catalogue');
    }
  }

  Widget _buildCollection() {
    return CollectionPage(
      title: 'Collection',
      isOnline: isOnline,
      onReloadRegister: (callback) {
        reloadCollection = callback; // guarda el fetchItems()
      },
    );
  }

@override
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
      title: Text(currentTitle),
      backgroundColor: Colors.blue,
      actions: [
        IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () async {
            await Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const PreferencesPage(),
              ),
            );

            await reloadCollection?.call();
          },
        ),
      ],
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
              color: Colors.blueGrey,
              padding: EdgeInsets.all(8),
              child: Text(
                'Offline Mode',
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
    onlineCheck();
    setState(() {
      currentPage = value;
    });
  }

}


