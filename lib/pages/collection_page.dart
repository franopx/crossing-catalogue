
import 'dart:convert';


import 'package:crossing_catalogue/services/api_service.dart';
import 'package:crossing_catalogue/services/database_helper.dart';
import 'package:crossing_catalogue/widgets/collection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:logger/web.dart';

import 'dart:math';

class CollectionPage extends StatefulWidget{
  CollectionPage({
    super.key, 
    required this.title});

  final String title;
  var logger = Logger();

  @override
  State<StatefulWidget> createState() {
    return CollectionPageState();
  }

}

class CollectionPageState extends State<CollectionPage> {
  
  var logger = Logger();
  final String currentTitle = 'Collection';

  final DatabaseHelper db = DatabaseHelper();

@override
  void initState() {
    super.initState();

    getItemList();
  }

  Future<void> getItemList() async {
    var list = await db.getAllItems();
    logger.d(list[0].name);
    return;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: CollectionListWidget(),);
  }
}