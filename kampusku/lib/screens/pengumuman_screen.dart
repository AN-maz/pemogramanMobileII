import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../widgets/pengumuman_tile.dart';

class PengumumanScreen extends StatelessWidget {
  const PengumumanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pengumuman'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        children: [
          for (final p in DataService.daftarPengumuman) PengumumanTile(pengumuman: p),
        ],
      ),
    );
  }
}
