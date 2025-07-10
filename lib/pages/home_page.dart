
import 'dart:convert';


import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:logger/web.dart';

import 'dart:math';

class HomePage extends StatefulWidget{
  HomePage({
    super.key, 
    required this.title});

  final String title;
  var logger = Logger();

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  
  var logger = Logger();
  final String currentTitle = 'Crossing Catalogue';

@override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(child: Text('Home page'),)
    );
  }
}


