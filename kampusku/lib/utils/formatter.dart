class Formatter {
  static const _bulan = [
    'Januari',
    'Februari',
    'Maret',
    'April',
    'Mei',
    'Juni',
    'Juli',
    'Agustus',
    'September',
    'Oktober',
    'November',
    'Desember',
  ];

  static String tanggalPanjang(DateTime tanggal) {
    return '${tanggal.day} ${_bulan[tanggal.month - 1]} ${tanggal.year}';
  }

  static String tanggalPendek(DateTime tanggal) {
    final hari = tanggal.day.toString().padLeft(2, '0');
    final bulan = tanggal.month.toString().padLeft(2, '0');
    return '$hari/$bulan/${tanggal.year}';
  }

  static String sisaHari(DateTime deadline) {
    final sekarang = DateTime.now();
    final selisih = DateTime(deadline.year, deadline.month, deadline.day)
        .difference(DateTime(sekarang.year, sekarang.month, sekarang.day))
        .inDays;

    if (selisih < 0) return 'Terlewat ${-selisih} hari';
    if (selisih == 0) return 'Hari ini';
    if (selisih == 1) return 'Besok';
    return '$selisih hari lagi';
  }
}
