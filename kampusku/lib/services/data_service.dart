import '../models/mata_kuliah.dart';
import '../models/tugas.dart';
import '../models/pengumuman.dart';

class DataService {
  static const List<MataKuliah> jadwal = [
    MataKuliah(
      kode: 'IF-024',
      nama: 'Pemrograman Mobile II',
      sks: 3,
      hari: 'Senin',
      ruang: 'Lab Komputer 2',
      jam: '08:00 - 10:30',
    ),
    MataKuliah(
      kode: 'IF-021',
      nama: 'Basis Data',
      sks: 3,
      hari: 'Selasa',
      ruang: 'Ruang 3.2',
      jam: '10:30 - 13:00',
    ),
    MataKuliah(
      kode: 'IF-030',
      nama: 'Pemrograman Web',
      sks: 3,
      hari: 'Rabu',
      ruang: 'Lab Komputer 1',
      jam: '13:00 - 15:30',
    ),
    MataKuliah(
      kode: 'IF-018',
      nama: 'Algoritma & Struktur Data',
      sks: 2,
      hari: 'Kamis',
      ruang: 'Ruang 2.4',
      jam: '08:00 - 09:40',
    ),
    MataKuliah(
      kode: 'IF-027',
      nama: 'Kecerdasan Buatan',
      sks: 3,
      hari: 'Jumat',
      ruang: 'Ruang 4.1',
      jam: '09:40 - 12:10',
    ),
  ];

  static final List<Tugas> daftarTugas = [
    Tugas(
      judul: 'Membuat UI Login',
      mataKuliah: 'Pemrograman Mobile II',
      deadline: DateTime.now().add(const Duration(days: 2)),
    ),
    Tugas(
      judul: 'Normalisasi Database',
      mataKuliah: 'Basis Data',
      deadline: DateTime.now().add(const Duration(days: 5)),
    ),
    Tugas(
      judul: 'Landing Page Responsif',
      mataKuliah: 'Pemrograman Web',
      deadline: DateTime.now().add(const Duration(days: -1)),
      selesai: true,
    ),
    Tugas(
      judul: 'Implementasi Linked List',
      mataKuliah: 'Algoritma & Struktur Data',
      deadline: DateTime.now().add(const Duration(days: 9)),
    ),
  ];

  static final List<Pengumuman> daftarPengumuman = [
    Pengumuman(
      judul: 'Ujian Tengah Semester',
      isi:
          'UTS akan dilaksanakan pada tanggal 10-14 November. Silakan cek jadwal masing-masing mata kuliah.',
      tanggal: DateTime.now().subtract(const Duration(days: 1)),
      sumber: 'BAAK',
    ),
    Pengumuman(
      judul: 'Pendaftaran KRS Semester Ganjil',
      isi:
          'Pendaftaran KRS dibuka hingga akhir bulan. Pastikan tidak ada mata kuliah yang bentrok.',
      tanggal: DateTime.now().subtract(const Duration(days: 3)),
      sumber: 'Akademik',
    ),
    Pengumuman(
      judul: 'Libur Nasional',
      isi: 'Kampus libur pada hari Senin depan. Kegiatan perkuliahan diliburkan.',
      tanggal: DateTime.now().subtract(const Duration(days: 6)),
      sumber: 'Rektorat',
    ),
  ];
}
