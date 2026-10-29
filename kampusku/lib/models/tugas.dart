class Tugas {
  final String judul;
  final String mataKuliah;
  final DateTime deadline;
  final bool selesai;

  const Tugas({
    required this.judul,
    required this.mataKuliah,
    required this.deadline,
    this.selesai = false,
  });
}
