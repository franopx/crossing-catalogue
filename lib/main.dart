import 'package:crossing_catalogue/domain/quiz_data/island_quiz.dart';
import 'package:crossing_catalogue/domain/quiz_data/personality_quiz.dart';
import 'package:crossing_catalogue/pages/home_page.dart';
import 'package:crossing_catalogue/pages/nav_page.dart';
import 'package:crossing_catalogue/pages/quiz_page.dart';
import 'package:crossing_catalogue/pages/villager_catalogue_page.dart';
import 'package:crossing_catalogue/services/api_service.dart';
import 'package:crossing_catalogue/services/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:crossing_catalogue/themes/theme.dart';
import 'package:crossing_catalogue/themes/util.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DatabaseHelper().initializeDatabase();

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
      home: NavPage(title: 'Crossing Catalogue'));
  }
}
