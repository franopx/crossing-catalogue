import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
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
          child: CachedNetworkImage(
            imageUrl: villager.imageUrl,
            width: 50,
            height: 50,
            fit: BoxFit.cover,
            placeholder: (context, url) => const SizedBox(
              width: 50,
              height: 50,
              child: Center(child: CircularProgressIndicator(strokeWidth: 2)),
            ),
            errorWidget: (context, url, error) => const SizedBox(
              width: 50,
              height: 50,
              child: Icon(Icons.error),
            ),
          ),
        ),
        title: Text(villager.name),
        subtitle: Text(
          '${villager.species} · ${villager.personality} · ${villager.hobby} · ${villager.styles.isNotEmpty ? villager.styles[0] : ''}',
        ),
      ),
    );
  }
}