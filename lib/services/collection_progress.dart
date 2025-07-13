import 'package:crossing_catalogue/services/database_helper.dart';

class CollectionProgress {
  final DatabaseHelper db = DatabaseHelper();

  Future<Map<String, (int obtained, int total)>> calculateProgress() async {
    final itemList = await db.getAllItems();

    int fishTotal = 0, fishObtained = 0;
    int bugTotal = 0, bugObtained = 0;
    int fossilTotal = 0, fossilObtained = 0;
    int seaTotal = 0, seaObtained = 0;

    for (var item in itemList) {
      switch (item.type) {
        case 'fish':
          fishTotal++;
          if (item.obtained) fishObtained++;
          break;
        case 'bug':
          bugTotal++;
          if (item.obtained) bugObtained++;
          break;
        case 'fossil':
          fossilTotal++;
          if (item.obtained) fossilObtained++;
          break;
        case 'seaCreature':
          seaTotal++;
          if (item.obtained) seaObtained++;
          break;
      }
    }

    return {
      'fish': (fishObtained, fishTotal),
      'bug': (bugObtained, bugTotal),
      'fossil': (fossilObtained, fossilTotal),
      'seaCreature': (seaObtained, seaTotal),
    };
  }
}