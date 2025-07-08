import 'package:flutter/material.dart';
import 'package:crossing_catalogue/domain/entities/villager_list_entity.dart';
import 'package:crossing_catalogue/widgets/villager_item_widget.dart';
import 'package:crossing_catalogue/domain/entities/villager_entity.dart';
import 'package:logger/web.dart';

class VillagerListWidget extends StatefulWidget {
  const VillagerListWidget({super.key});

  @override
  State<VillagerListWidget> createState() => _VillagerListWidgetState();
}

class _VillagerListWidgetState extends State<VillagerListWidget> {
  final VillagerList list = VillagerList();
  List<Villager> allVillagers = [];
  List<Villager> displayedVillagers = [];
  bool isLoading = true;

  String searchQuery = '';
  String selectedPersonality = 'All';
  String selectedSpecies = 'All';
  String sortField = 'name';
  bool ascending = true;

  @override
  void initState() {
    super.initState();
    fetchVillagers();
  }

  Future<void> fetchVillagers() async {
    allVillagers = await list.getJson();
    setState(() {
      isLoading = false;
      applyFilters();
    });
  }

  void applyFilters() {
    List<Villager> filtered = List.from(allVillagers);

    if (selectedPersonality != 'All') {
      filtered = filtered.where((v) => v.personality == selectedPersonality).toList();
    }

    if (selectedSpecies != 'All') {
      filtered = filtered.where((v) => v.species == selectedSpecies).toList();
    }

    if (searchQuery.isNotEmpty) {
      filtered = filtered.where((v) => v.name.toLowerCase().contains(searchQuery.toLowerCase())).toList();
    }

    filtered.sort((a, b) {
      int compare;
      switch (sortField) {
        case 'personality':
          compare = a.personality.compareTo(b.personality);
          break;
        case 'species':
          compare = a.species.compareTo(b.species);
          break;
        case 'name':
        default:
          compare = a.name.compareTo(b.name);
      }
      return ascending ? compare : -compare;
    });

    setState(() {
      displayedVillagers = filtered;
    });
  }

  void clearFilters() {
    setState(() {
      searchQuery = '';
      selectedPersonality = 'All';
      selectedSpecies = 'All';
      sortField = 'name';
      ascending = true;
      applyFilters();
    });
  }

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    final personalities = ['All', ...{for (var v in allVillagers) v.personality}];
    final speciesList = ['All', ...{for (var v in allVillagers) v.species}];

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Search',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Search by name...',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
                onChanged: (value) {
                  searchQuery = value;
                  applyFilters();
                },
              ),
              const SizedBox(height: 12),
              const Text(
                'Filter by',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: selectedPersonality,
                      onChanged: (value) {
                        if (value != null) {
                          selectedPersonality = value;
                          applyFilters();
                        }
                      },
                      items: personalities.map((p) {
                        return DropdownMenuItem(value: p, child: Text(p));
                      }).toList(),
                    ),
                  ),
                  const SizedBox(width: 8),
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: selectedSpecies,
                      onChanged: (value) {
                        if (value != null) {
                          selectedSpecies = value;
                          applyFilters();
                        }
                      },
                      items: speciesList.map((s) {
                        return DropdownMenuItem(value: s, child: Text(s));
                      }).toList(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              const Text(
                'Sort by',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              Row(
                children: [
                  Expanded(
                    child: DropdownButton<String>(
                      isExpanded: true,
                      value: sortField,
                      onChanged: (value) {
                        if (value != null) {
                          sortField = value;
                          applyFilters();
                        }
                      },
                      items: const [
                        DropdownMenuItem(value: 'name', child: Text('Name')),
                        DropdownMenuItem(value: 'personality', child: Text('Personality')),
                        DropdownMenuItem(value: 'species', child: Text('Species')),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(ascending ? Icons.arrow_upward : Icons.arrow_downward),
                    onPressed: () {
                      ascending = !ascending;
                      applyFilters();
                    },
                  ),
                  TextButton(
                    onPressed: clearFilters,
                    child: const Text('Clear Filters'),
                  ),
                ],
              ),
            ],
          ),
        ),
        const Divider(),
        Expanded(
          child: displayedVillagers.isEmpty
              ? const Center(child: Text("No villagers found."))
              : ListView.builder(
                  itemCount: displayedVillagers.length,
                  itemBuilder: (context, index) {
                    final villager = displayedVillagers[index];
                    return VillagerItemWidget(villager: villager);
                  },
                ),
        ),
      ],
    );
  }
}