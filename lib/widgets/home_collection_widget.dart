import 'package:flutter/material.dart';
import 'package:crossing_catalogue/services/collection_progress.dart';

class HomeCollectionWidget extends StatefulWidget {
  final VoidCallback onViewCollection;

  const HomeCollectionWidget({super.key, required this.onViewCollection});

  @override
  State<HomeCollectionWidget> createState() => _HomeCollectionWidgetState();
}

class _HomeCollectionWidgetState extends State<HomeCollectionWidget> {
  final CollectionProgress progress = CollectionProgress();
  Map<String, (int obtained, int total)>? data;

  @override
  void initState() {
    super.initState();
    loadProgress();
  }

  Future<void> loadProgress() async {
    final result = await progress.calculateProgress();
    if (mounted) {
      setState(() => data = result);
    }
  }

  double _progress(int obtained, int total) => total == 0 ? 0 : obtained / total;

  @override
  Widget build(BuildContext context) {
    if (data == null) {
      return const Card(
        margin: EdgeInsets.all(16),
        child: Padding(
          padding: EdgeInsets.all(32),
          child: Center(child: CircularProgressIndicator()),
        ),
      );
    }

    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Collection Progress',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            _buildProgressRow('Fish', data!['fish']!),
            const SizedBox(height: 8),
            _buildProgressRow('Bugs', data!['bug']!),
            const SizedBox(height: 8),
            _buildProgressRow('Fossils', data!['fossil']!),
            const SizedBox(height: 8),
            _buildProgressRow('Sea Creatures', data!['seaCreature']!),
            const SizedBox(height: 16),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: widget.onViewCollection,
                child: const Text('View collection'),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressRow(String label, (int obtained, int total) pair) {
    final (obtained, total) = pair;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('$label: $obtained / $total'),
        const SizedBox(height: 4),
        LinearProgressIndicator(
          value: _progress(obtained, total),
          minHeight: 6,
          backgroundColor: Colors.grey.shade300,
          color: Colors.green,
        ),
      ],
    );
  }
}