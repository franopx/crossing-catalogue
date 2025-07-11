import 'package:crossing_catalogue/domain/entities/item_data_entity.dart';
import 'package:crossing_catalogue/services/database_helper.dart';
import 'package:crossing_catalogue/services/network_check.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class CollectionListWidget extends StatefulWidget {
  const CollectionListWidget({super.key});

  @override
  State<CollectionListWidget> createState() => _CollectionListWidgetState();
}

class _CollectionListWidgetState extends State<CollectionListWidget> {
  List<ItemData> allItems = [];
  List<ItemData> displayedItems = [];
  bool isLoading = true;

  String searchQuery = '';
  String selectedType = 'All';
  bool ascending = true;

  @override
  void initState() {
    super.initState();
    fetchItems();
    checkInternet();
  }

  bool isOnline = false;
  
  Future<void> checkInternet() async {
    bool connection = await NetworkStatus.isOnline;
    setState(() {
      isOnline = connection;
    });
  }

  Future<void> fetchItems() async {
    final db = await DatabaseHelper().database;

    final tables = ['fishItem', 'bugItem', 'fossilItem', 'seaCreatureItem'];
    List<ItemData> items = [];

    for (final table in tables) {
      final results = await db.query(table);
      items.addAll(results.map((e) => ItemData.fromMap(e)));
    }

    if (mounted) {
      setState(() {
        allItems = items;
        isLoading = false;
        applyFilters();
      });
    }
  }

  void applyFilters() {
    List<ItemData> filtered = List.from(allItems);

    if (selectedType != 'All') {
      filtered = filtered.where((item) => item.type == selectedType).toList();
    }

    if (searchQuery.isNotEmpty) {
      filtered = filtered.where((item) =>
        item.name.toLowerCase().contains(searchQuery.toLowerCase())
      ).toList();
    }

    filtered.sort((a, b) => ascending
        ? a.name.compareTo(b.name)
        : b.name.compareTo(a.name));

    setState(() {
      displayedItems = filtered;
    });
  }

  void updateObtained(ItemData item, bool newValue) async {
    final db = await DatabaseHelper().database;
    final tables = ['fishItem', 'bugItem', 'fossilItem', 'seaCreatureItem'];

    for (final table in tables) {
      final updated = await db.update(
        table,
        {'obtained': newValue ? 1 : 0},
        where: 'name = ?',
        whereArgs: [item.name],
      );
      if (updated > 0) break;
    }

    setState(() {
      item = ItemData(
        name: item.name,
        type: item.type,
        url: item.url,
        imageUrl: item.imageUrl,
        obtained: newValue,
      );
      final index = allItems.indexWhere((i) => i.name == item.name);
      allItems[index] = item;
      applyFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    

    
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }



    final types = ['All', ...{for (final item in allItems) item.type}];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Search by name',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  searchQuery = value;
                  applyFilters();
                },
              ),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: selectedType,
                      onChanged: (value) {
                        if (value != null) {
                          selectedType = value;
                          applyFilters();
                        }
                      },
                      items: types.map((type) {
                        return DropdownMenuItem(
                          value: type,
                          child: Text(type),
                        );
                      }).toList(),
                    ),
                  ),
                  IconButton(
                    icon: Icon(
                      ascending ? Icons.arrow_upward : Icons.arrow_downward,
                    ),
                    onPressed: () {
                      ascending = !ascending;
                      applyFilters();
                    },
                  ),
                ],
              )
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: ListView.builder(
            itemCount: displayedItems.length,
            itemBuilder: (context, index) {
              final item = displayedItems[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                child: ListTile(
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(6),
                    child: isOnline ? Image.network(
                      item.imageUrl,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ) : Icon(Icons.signal_wifi_off),
                  ),
                  title: Text(item.name),
                  subtitle: Text(item.type),
                  trailing: Wrap(
                    spacing: 8,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.open_in_browser),
                        onPressed: () async {
                          final uri = Uri.parse(item.url);
                          if (await canLaunchUrl(uri)) {
                            await launchUrl(uri, mode: LaunchMode.externalApplication);
                          }
                        },
                      ),
                      Checkbox(
                        value: item.obtained,
                        onChanged: (value) {
                          if (value != null) {
                            updateObtained(item, value);
                          }
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}