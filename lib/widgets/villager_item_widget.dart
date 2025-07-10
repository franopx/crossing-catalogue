import 'package:flutter/material.dart';
import 'package:crossing_catalogue/domain/entities/villager_entity.dart';

class VillagerItemWidget extends StatelessWidget {
  final Villager villager;

  const VillagerItemWidget({super.key, required this.villager});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.network(
            villager.imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
          ),
        ),
        title: Text(villager.name),
        subtitle: Text(
          '${villager.species} · ${villager.personality} · ${villager.hobby} · ${villager.styles[0]}',
        ),
      ),
    );
  }
}
