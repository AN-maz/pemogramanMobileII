import 'package:flutter/material.dart';
import '../models/mata_kuliah.dart';

class MataKuliahTile extends StatelessWidget {
  final MataKuliah mataKuliah;

  const MataKuliahTile({super.key, required this.mataKuliah});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Text(
            mataKuliah.kode.split('-').last,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
          ),
        ),
        title: Text(
          mataKuliah.nama,
          style: const TextStyle(fontWeight: FontWeight.w600),
        ),
        subtitle: Text(
          '${mataKuliah.hari} · ${mataKuliah.jam}\n${mataKuliah.ruang} · ${mataKuliah.sks} SKS',
        ),
        isThreeLine: true,
      ),
    );
  }
}
