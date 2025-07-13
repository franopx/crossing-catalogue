// home_villager_widget.dart
import 'package:flutter/material.dart';

class HomeVillagerWidget extends StatelessWidget {
  final VoidCallback onTakeTest;
  final VoidCallback onViewVillagers;

  const HomeVillagerWidget({
    super.key,
    required this.onTakeTest,
    required this.onViewVillagers,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Which villager are you?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: onTakeTest,
                    child: const Text('Take the test'),
                  ),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: OutlinedButton(
                    onPressed: onViewVillagers,
                    child: const Text('View villagers'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}