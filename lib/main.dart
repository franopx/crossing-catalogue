import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';

void main() {

  var villagers = ServiceVillager('e');
  villagers.getVillager('game=NH');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(title: 'Crossing Catalogue')
    );
  }
}
