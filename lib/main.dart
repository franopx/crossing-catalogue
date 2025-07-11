import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/nav_page.dart';
import 'package:crossing_catalogue/pages/quiz_page.dart';
import 'package:crossing_catalogue/pages/villager_catalogue_page.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:crossing_catalogue/themes/theme.dart';
import 'package:crossing_catalogue/themes/util.dart';

void main() {
  var villagers = ServiceVillager('e');
  villagers.getVillager('game=NH&nhdetails=true');

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    final brightness = View.of(context).platformDispatcher.platformBrightness;

    TextTheme textTheme = createTextTheme(context, "Itim", "Itim");
    MaterialTheme theme = MaterialTheme(textTheme);

    return MaterialApp(
      theme: brightness == Brightness.light ? theme.light() : theme.dark(),
      home: QuizPage(),
    );
  }
}
