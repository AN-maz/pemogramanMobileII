import 'package:flutter/material.dart';
import '../models/pengumuman.dart';
import '../utils/formatter.dart';

class PengumumanTile extends StatelessWidget {
  final Pengumuman pengumuman;

  const PengumumanTile({super.key, required this.pengumuman});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                  child: Text(
                    pengumuman.judul,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                Chip(
                  label: Text(
                    pengumuman.sumber,
                    style: const TextStyle(fontSize: 11),
                  ),
                  visualDensity: VisualDensity.compact,
                  padding: EdgeInsets.zero,
                ),
              ],
            ),
            const SizedBox(height: 8),
            Text(pengumuman.isi),
            const SizedBox(height: 8),
            Text(
              Formatter.tanggalPanjang(pengumuman.tanggal),
              style: TextStyle(
                fontSize: 12,
                color: Theme.of(context).colorScheme.outline,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
