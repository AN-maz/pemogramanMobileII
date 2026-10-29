import 'package:flutter/material.dart';
import '../models/tugas.dart';
import '../utils/formatter.dart';

class TugasTile extends StatelessWidget {
  final Tugas tugas;

  const TugasTile({super.key, required this.tugas});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final lewat = !tugas.selesai && tugas.deadline.isBefore(DateTime.now());

    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: Icon(
          tugas.selesai
              ? Icons.check_circle
              : (lewat ? Icons.error_outline : Icons.assignment_outlined),
          color: tugas.selesai
              ? Colors.green
              : (lewat ? colorScheme.error : colorScheme.primary),
        ),
        title: Text(
          tugas.judul,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            decoration: tugas.selesai ? TextDecoration.lineThrough : null,
          ),
        ),
        subtitle: Text(
          '${tugas.mataKuliah}\n${Formatter.tanggalPendek(tugas.deadline)} · ${posisiWaktu(tugas)}',
        ),
        isThreeLine: true,
      ),
    );
  }

  String posisiWaktu(Tugas tugas) {
    if (tugas.selesai) return 'Selesai';
    return Formatter.sisaHari(tugas.deadline);
  }
}
