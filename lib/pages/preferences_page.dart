import 'package:crossing_catalogue/providers/app_data.dart';
import 'package:crossing_catalogue/providers/preferences_provider.dart';
import 'package:crossing_catalogue/services/database_helper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PreferencesPage extends StatefulWidget {
  const PreferencesPage({super.key});

  @override
  State<PreferencesPage> createState() => _PreferencesPageState();
}

class _PreferencesPageState extends State<PreferencesPage> {
  String _themeMode = 'auto'; // valores posibles: 'auto', 'light', 'dark'

  final Map<String, String> themeLabels = {
    'auto': 'System Default',
    'light': 'Light',
    'dark': 'Dark',
  };

  @override
  void initState() {
    super.initState();
    loadPreferences();
  }

  Future<void> loadPreferences() async {
    final value = await PreferencesManager.getDarkMode(); // retorna 'auto', 'light' o 'dark'
    setState(() {
      _themeMode = value;
    });
  }

  Future<void> _setThemeMode(String value) async { 
    setState(() {
      _themeMode = value;
    });
    await PreferencesManager.setDarkMode(value);  
  }

  Future<void> _resetProgress() async {
    final db = await DatabaseHelper().database;
    final tables = ['fishItem', 'bugItem', 'fossilItem', 'seaCreatureItem'];

    final batch = db.batch();
    for (final table in tables) {
      batch.update(table, {'obtained': 0});
    }
    await batch.commit(noResult: true);

    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Progress reset successfully')),
      );
    }
  }

  void _confirmReset() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Confirm Reset'),
        content: const Text(
          'Are you sure you want to reset all progress?\nThis will uncheck all obtained items.',
        ),
        actions: [
          TextButton(
            child: const Text('Cancel'),
            onPressed: () => Navigator.pop(context),
          ),
          ElevatedButton(
            child: const Text('Reset'),
            onPressed: () async {
              Navigator.pop(context); // cerrar el diálogo
              await _resetProgress();
            },
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var appdata = context.watch<AppData>();

    return Scaffold(
      appBar: AppBar(title: const Text('Preferences')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Theme',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          DropdownButton<String>(
            value: _themeMode,
            isExpanded: true,
            onChanged: (value) {
              if (value != null) {
                _setThemeMode(value);
                appdata.setDarkMode(value);
              }
            },
            items: themeLabels.entries.map((entry) {
              return DropdownMenuItem<String>(
                value: entry.key,
                child: Text(entry.value),
              );
            }).toList(),
          ),
          const Divider(height: 32),
          const Text(
            'Progress',
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 8),
          ElevatedButton.icon(
            onPressed: _confirmReset,
            icon: const Icon(Icons.delete_forever),
            label: const Text('Reset Collection Progress'),
            style: ElevatedButton.styleFrom(
              foregroundColor: Colors.white,
              backgroundColor: Colors.red,
            ),
          ),
        ],
      ),
    );
  }
}