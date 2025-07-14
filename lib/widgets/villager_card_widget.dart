import 'package:crossing_catalogue/domain/entities/villager_entity.dart';
import 'package:flutter/material.dart';

class VillagerCard extends StatelessWidget {
  final Villager villager;
  const VillagerCard({super.key, required this.villager});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(24),
        boxShadow: const [BoxShadow(blurRadius: 10, color: Colors.black26)],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.network(villager.imageUrl, height: 120),
          const SizedBox(height: 10),
          Text(
            villager.name,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          Text('Species ${villager.species}'),
          Text('Personality ${villager.personality}'),
          Text('Month of Birth: ${villager.birthmonth}'),
          Text('Hobby: ${villager.hobby}'),
        ],
      ),
    );
  }
}
