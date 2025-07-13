
import 'package:flutter/material.dart';
import 'package:crossing_catalogue/widgets/home_collection_widget.dart';
import 'package:crossing_catalogue/widgets/home_villager_widget.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onViewVillagers;
  final VoidCallback onTakeTest;
  final VoidCallback onViewCollection;

  const HomePage({
    super.key,
    required this.onViewVillagers,
    required this.onTakeTest,
    required this.onViewCollection,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            child: Image.asset(
              'assets/images/logo.png',
              fit: BoxFit.cover,
            )
          ),
          HomeVillagerWidget(
            onTakeTest: onTakeTest,
            onViewVillagers: onViewVillagers,
          ),
          const SizedBox(height: 24),
          HomeCollectionWidget(
            onViewCollection: onViewCollection,
          ),
        ],
      ),
    );
  }
}

