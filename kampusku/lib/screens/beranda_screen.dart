import 'package:flutter/material.dart';
import '../services/data_service.dart';
import '../widgets/mata_kuliah_tile.dart';

class BerandaScreen extends StatelessWidget {
  const BerandaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final totalSks = DataService.jadwal.fold<int>(0, (sum, mk) => sum + mk.sks);

    return Scaffold(
      appBar: AppBar(
        title: const Text('KampusKu'),
        backgroundColor: Theme.of(context).colorScheme.primary,
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body: ListView(
        children: [
          _Header(totalSks: totalSks),
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 4),
            child: Text(
              'Jadwal Kuliah',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          for (final mk in DataService.jadwal) MataKuliahTile(mataKuliah: mk),
        ],
      ),
    );
  }
}

class _Header extends StatelessWidget {
  final int totalSks;

  const _Header({required this.totalSks});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      color: Theme.of(context).colorScheme.primary,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Selamat Datang',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary,
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'Semester 5 · $totalSks SKS',
            style: TextStyle(
              color: Theme.of(context).colorScheme.onPrimary.withValues(alpha: 0.85),
            ),
          ),
        ],
      ),
    );
  }
}
