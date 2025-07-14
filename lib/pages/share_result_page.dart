import 'dart:io';
//import 'dart:nativewrappers/_internal/vm/lib/typed_data_patch.dart';
import 'dart:typed_data';

import 'package:crossing_catalogue/domain/entities/villager_entity.dart';
import 'package:crossing_catalogue/widgets/villager_card_widget.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:share_plus/share_plus.dart';

class ShareResult extends StatefulWidget {
  final Villager villager;

  const ShareResult({super.key, required this.villager});

  @override
  State<StatefulWidget> createState() => _ShareResultState();
}

class _ShareResultState extends State<ShareResult> {
  final ScreenshotController screenshotController = ScreenshotController();

  Future<void> shareVillagerCard() async {
    final Uint8List? image = await screenshotController.capture();

    if (image == null) return;

    final directory = await getTemporaryDirectory();
    final imagePath = await File(
      '${directory.path}/villager_share.png',
    ).create();
    await imagePath.writeAsBytes(image);
    await SharePlus.instance.share(
      ShareParams(
        files: [XFile(imagePath.path)],
        text: '¡This is my ideal villager in Animal Crossing: New Horizons!',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Your Ideal Villager')),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Screenshot(
              controller: screenshotController,
              child: VillagerCard(villager: widget.villager),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: shareVillagerCard,
              icon: const Icon(Icons.share),
              label: const Text('Share'),
            ),
          ],
        ),
      ),
    );
  }
}
