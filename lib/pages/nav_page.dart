
import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/villager_catalogue_page.dart';
import 'package:crossing_catalogue/widgets/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:logger/web.dart';


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

  Widget buildContent() {
    switch(currentPage) {
      case 1: 
        setState(() {
          currentTitle = 'Villagers';
        });
        return VillagerCataloguePage(title: 'Catalogue');
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
      body: buildContent(),
      bottomNavigationBar: BottomNavBar(currentIndex: currentPage, onTabSelected: onNavTap),
    );
  }

  void onNavTap(value) {
    setState(() {
      currentPage = value;
    });
  }

}


