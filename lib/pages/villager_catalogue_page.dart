import 'package:crossing_catalogue/services/network_check.dart';
import 'package:crossing_catalogue/widgets/villager_list_widget.dart';
import 'package:flutter/material.dart';

class VillagerCataloguePage extends StatefulWidget {
  const VillagerCataloguePage({
    super.key, 
    required this.title,
    required this.isOnline,
    });

  final String title;
  
  final bool isOnline;

  @override
  State<StatefulWidget> createState() {
    return VillagerCataloguePageState();
  }
}

class VillagerCataloguePageState extends State<VillagerCataloguePage> {

  bool isOnline = false;

  Future<void> onlineCheck() async {
    isOnline = await NetworkStatus.isOnline;
  }

  @override
  void initState() {
    super.initState();


    setState(() {
      isOnline = widget.isOnline;
      onlineCheck();  
    });
    

  }

  @override
  void activate() {
    setState(() {
      onlineCheck();  
    });
    super.activate();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(title: Text('Villagers'),),
      body: isOnline ? VillagerListWidget() : Center(child: const Text('No internet, try again later.')),
    );
  }
}