import 'package:crossing_catalogue/widgets/villager_list_widget.dart';
import 'package:flutter/material.dart';

class VillagerCataloguePage extends StatefulWidget {
  const VillagerCataloguePage({
    super.key, 
    required this.title,
    });

  final String title;

  @override
  State<StatefulWidget> createState() {
    return VillagerCataloguePageState();
  }
}

class VillagerCataloguePageState extends State<VillagerCataloguePage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Villagers'),),
      body: VillagerListWidget(),
    );
  }
}