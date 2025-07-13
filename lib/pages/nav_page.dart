import 'package:crossing_catalogue/pages/about_page.dart';
import 'package:crossing_catalogue/pages/collection_page.dart';
import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/preferences_page.dart';
import 'package:crossing_catalogue/pages/quiz_selection_page.dart';
import 'package:crossing_catalogue/pages/villager_catalogue_page.dart';
import 'package:crossing_catalogue/services/network_check.dart';
import 'package:crossing_catalogue/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';

class NavPage extends StatefulWidget {
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
  void initState() {
    onlineCheck();
    super.initState();
  }

  Widget buildContent() {
    switch (currentPage) {
      case 1:
        return isOnline
            ? QuizSelectionPage()
            : Center(child: const Text('No internet, try again later.'));

      case 2:
        return isOnline
            ? VillagerCataloguePage(title: 'Catalogue', isOnline: isOnline)
            : Center(child: const Text('No internet, try again later.'));

      case 3:
        return _buildCollection();

      case 4:
        return About();

      default:
        return HomePage(
          onViewVillagers: () {
            setState(() {
              currentPage = 2;
            });
          },
          onTakeTest: () {
            setState(() {
              currentPage = 1;
            });
          },
          onViewCollection: () {
            setState(() {
              currentPage = 3;
            });
          },
        );
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
      switch (currentPage) {
        case 0:
          currentTitle = 'Crossing Catalogue';
        case 1:
          currentTitle = 'Villager Test';
        case 2:
          currentTitle = 'Villager Catalogue';
        case 3:
          currentTitle = 'Collection';
        case 4:
          currentTitle = 'About us';
      }
    });
  }
}
