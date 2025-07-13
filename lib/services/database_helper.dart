import 'dart:convert';

import 'package:crossing_catalogue/domain/entities/item_data_entity.dart';
import 'package:crossing_catalogue/services/items_api_service.dart';
import 'package:crossing_catalogue/services/network_check.dart';
import 'package:flutter/material.dart';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseHelper {
  static final DatabaseHelper _instance = DatabaseHelper._internal();
  static Database? _database;

  factory DatabaseHelper() {
    return _instance;
  }

  DatabaseHelper._internal();
  
  Future<void> initializeDatabase() async {
    var db = await database;

    final result = await db.rawQuery('SELECT COUNT(*) FROM fishItem');
    final count = Sqflite.firstIntValue(result);

    if (count == 0) {
      print('La tabla fishItem está vacía');
      await fillDB();
    } else {
      print('La tabla fishItem tiene $count elementos');
    }
    
    await database;
  }

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDatabase();
    return _database!;
  }

  Future<Database> _initDatabase() async {
    final dbPath = await getDatabasesPath();
    final path = join(dbPath, 'item_database.db');
    
    Database db;
    db = await openDatabase(
      path,
      version: 1,
      onCreate: _onCreate,
    );

    return db;
  }


  Future<void> _onCreate(Database db, int version) async {
    await db.execute('''
    CREATE TABLE fishItem (
    name TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    url TEXT NOT NULL,
    image_url TEXT NOT NULL,
    render_url TEXT,
    obtained INTEGER NOT NULL
    )
    ''');

    await db.execute('''
    CREATE TABLE bugItem (
    name TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    url TEXT NOT NULL,
    image_url TEXT NOT NULL,
    render_url TEXT,
    obtained INTEGER NOT NULL
    )
    ''');

    await db.execute('''
    CREATE TABLE fossilItem (
    name TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    url TEXT NOT NULL,
    image_url TEXT NOT NULL,
    render_url TEXT,
    obtained INTEGER NOT NULL
    )
    ''');

    await db.execute('''
    CREATE TABLE seaCreatureItem (
    name TEXT PRIMARY KEY,
    type TEXT NOT NULL,
    url TEXT NOT NULL,
    image_url TEXT NOT NULL,
    render_url TEXT,
    obtained INTEGER NOT NULL
    )
    ''');
  }


  Future<int> insertConcept(ItemData data) async {
  final db = await database;
  
  String table = '${data.type}Item';
  
  return await db.insert(
    table,
    data.toMap(),
    conflictAlgorithm: ConflictAlgorithm.replace,
    );
  }

  Future<int> deleteConcept(String itemName, String type) async {
    final db = await database;
    return await db.delete(
      '${type}Item',
      where: 'name = ?', 
      whereArgs: [itemName], 
    );
  }

  Future<List<ItemData>> getAllItems() async {
    final db = await database;
    final List<Map<String, dynamic>> fishMap = await db.query('fishItem');
    final List<Map<String, dynamic>> bugMap = await db.query('bugItem');
    final List<Map<String, dynamic>> fossilMap = await db.query('fossilItem');
    final List<Map<String, dynamic>> seaCreatureMap = await db.query('seaCreatureItem');

    final List<Map<String, dynamic>> maps = fishMap + bugMap + fossilMap + seaCreatureMap;
    // Convierte cada Map a un objeto CardData
    return List.generate(maps.length, (i) {
      return ItemData(
        name: maps[i]['name'],
        type: maps[i]['type'],
        url: maps[i]['url'],
        imageUrl: maps[i]['image_url'],
        renderUrl: maps[i]['render_url'],
        obtained: maps[i]['obtained'] == 1 ? true : false // String -> DateTime
      );
    });
  }

  Future<ItemData?> getConcept(String name, String type) async {
    final db = await database;
    final List<Map<String, dynamic>> maps = await db.query(
      '${type}Item',
      where: 'name = ?',
      whereArgs: [name],
      limit: 1,
    );

    if(maps.isNotEmpty) {
      return ItemData(
        name: maps[0]['name'],
        type: maps[0]['type'],
        url: maps[0]['url'],
        imageUrl: maps[0]['image_url'],
        renderUrl: maps[0]['render_url'],
        obtained: maps[0]['obtained'] == 1 ? true : false // String -> DateTime
      );
    }
    return null;
  }

  Future<int> markObtained(String name, String type, bool value) async {
    ItemData? currentItem = await getConcept(name, type);

    if(currentItem != null) {
      final db = await database;
      
      ItemData newItem = ItemData(
        name: currentItem.name, 
        type: currentItem.type, 
        url: currentItem.url, 
        imageUrl: currentItem.imageUrl,
        renderUrl: currentItem.renderUrl, 
        obtained: value
      );

      return await db.update(
        '${newItem.type}Item',
        newItem.toMap(),
        where: 'name = ?',
        whereArgs: [name]
        );
    }
    return -1;
  }


  Future<int> updateConcept(String name, ItemData newItem) async {
    ItemData? currentItem = await getConcept(name, newItem.type);

    if(currentItem != null) {
      final db = await database;
      
      return await db.update(
        '${newItem.type}Item',
        newItem.toMap(),
        where: 'name = ?',
        whereArgs: [name]
        );
    }
    return -1;
  }

  var itemRequest = ServiceItems('');
  var allItems = <ItemData>[];

  var fishJson = <dynamic>[];
  var bugJson = <dynamic>[];
  var fossilJson = <dynamic>[];
  var seaCreatureJson = <dynamic>[];

  Map<String, List<dynamic>> itemsJson = {};

  final fishList = <ItemData>[];
  final bugList = <ItemData>[];
  final fossilList = <ItemData>[];
  final seaCreatureList = <ItemData>[];

  Future<List<ItemData>> getJson() async {
    
    if (await NetworkStatus.isOnline == false) {
      return [];
    }

    var fishJsonRaw = await itemRequest.getItem('thumbsize=48', 'fish');
    fishJson = jsonDecode(fishJsonRaw);

    var bugJsonRaw = await itemRequest.getItem('thumbsize=48', 'bug');
    bugJson = jsonDecode(bugJsonRaw);
    
    var fossilJsonRaw = await itemRequest.getItem('thumbsize=48', 'fossil');
    fossilJson = jsonDecode(fossilJsonRaw);
    
    var seaCreatureJsonRaw = await itemRequest.getItem('thumbsize=48', 'seaCreature');
    seaCreatureJson = jsonDecode(seaCreatureJsonRaw);

    itemsJson = {
      'fish' : fishJson,
      'bug' : bugJson,
      'fossil' : fossilJson,
      'seaCreature' : seaCreatureJson
    };


    for (var categoryEntry in itemsJson.entries) {
      String category = categoryEntry.key;
      List<dynamic> itemList = categoryEntry.value as List<dynamic>;

      for(var itemEntry in itemList) {
        
        var name = itemEntry['name'];
        var type = category;
        var url = itemEntry['url'];
        var imageUrl = itemEntry['image_url'];
        var renderUrl = itemEntry['render_url'] ?? '';
        var obtained = false;

        ItemData item = ItemData(name: name, type: type, url: url, renderUrl: renderUrl, imageUrl: imageUrl, obtained: obtained);
        
        allItems.add(item);
      }
    }

  return allItems;

  }

  Future<void> fillDB() async {
    var items = await getJson();

    for (var item in items) {
      insertConcept(item);
    }

  }

}
