import 'package:crossing_catalogue/widgets/villager_list_widget.dart';
import 'package:flutter/material.dart';

class VillagerCataloguePage extends StatefulWidget {
  VillagerCataloguePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return VillagerCataloguePageState();
  }
}

class VillagerCataloguePageState extends State<VillagerCataloguePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Villagers'),),
      body: VillagerListWidget(),
    );
  }
}