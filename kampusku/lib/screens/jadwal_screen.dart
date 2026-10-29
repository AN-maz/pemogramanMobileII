import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../widgets/mata_kuliah_tile.dart';

class JadwalScreen extends StatelessWidget {
  const JadwalScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final hari = <String, List>{};
    for (final mk in DataService.jadwal) {
      hari.putIfAbsent(mk.hari, () => []).add(mk);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Jadwal Kuliah'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        children: [
          for (final entry in hari.entries) ...[
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 4),
              child: Text(
                entry.key,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            for (final mk in entry.value) MataKuliahTile(mataKuliah: mk),
          ],
        ],
      ),
    );
  }
}
