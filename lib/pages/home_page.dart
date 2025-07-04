
import 'dart:convert';


import 'package:crossing_catalogue/services/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:logger/web.dart';

import 'dart:math';

class HomePage extends StatefulWidget{
  HomePage({super.key, required this.title});

  final String title;
  var logger = Logger();
  var villagerRequest = ServiceVillager('lol');
  var villagerJson;
  final villagerImageUrl = <String>[];

  Future<List<String>> getJson() async {
    villagerJson = await villagerRequest.getVillager('game=NH');

    var parsedJson = jsonDecode(villagerJson);
    List<dynamic> villagerList = parsedJson;

    for (var villager in villagerList) {
      villagerImageUrl.add(villager['image_url']);
    }

    return villagerImageUrl;

  }



  @override
  State<StatefulWidget> createState() {
    getJson();
    return HomePageState();
  }

}

class HomePageState extends State<HomePage> {
  
  int imageIndex = 0;
  String selectedImage = 'https://picsum.photos/250?image=9';

  var logger = Logger();

  var urlList = <String>[];

  void fetchUrl() async {
    urlList = await widget.getJson();
  }

  @override
  Widget build(BuildContext context) {

    fetchUrl();

    if (urlList.isEmpty) {
      fetchUrl();
      return Center(child: CircularProgressIndicator());
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          // Botón superior fijo
          SizedBox(
            width: double.infinity,
            height: 48,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  imageIndex = Random().nextInt(widget.villagerImageUrl.length);
                  selectedImage = widget.villagerImageUrl[imageIndex];
                });
              },
              child: const Text('Nuevo aldeano'),
            ),
          ),

          // Imagen o contenido debajo
          Expanded(
            child: Center(
              child: SizedBox(
                width: 400,
                height: 500,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    selectedImage,
                    fit: BoxFit.contain,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: CircularProgressIndicator(), // ← sin parámetros
                      );
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

}

class VillagerImageUrl {
  String name;
  String url;

  VillagerImageUrl(this.name, this.url);
}