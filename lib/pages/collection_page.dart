
import 'dart:convert';


import 'package:crossing_catalogue/services/api_service.dart';
import 'package:crossing_catalogue/services/database_helper.dart';
import 'package:crossing_catalogue/widgets/collection_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:logger/web.dart';

import 'dart:math';

class CollectionPage extends StatefulWidget{
  
  final void Function(Future<void> Function()) onReloadRegister;
  
  CollectionPage({
    super.key, 
    required this.title,
    required this.isOnline,
    required this.onReloadRegister
    });

  final String title;
  var logger = Logger();
  
  var isOnline;

  @override
  State<StatefulWidget> createState() {
    return CollectionPageState();
  }

}

class CollectionPageState extends State<CollectionPage> {
  
  var logger = Logger();
  final String currentTitle = 'Collection';

  final DatabaseHelper db = DatabaseHelper();

  var isOnline;

@override
  void initState() {
    super.initState();
    isOnline = widget.isOnline;
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
      body: CollectionListWidget(
        onFetchCallbackReady: (fetchItemsFn) {
          widget.onReloadRegister(fetchItemsFn); // ⬅️ Pasa hacia NavPage
        },
      ),
    );
  }
}