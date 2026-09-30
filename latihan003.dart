// BR-01 Menentukan harga per kilogram berdasarkan kategori sampah
int hitungHargaPerKg(String kategori) {
  if (kategori == "plastik") {
    return 5000;
  } else if (kategori == "kertas") {
    return 3000;
  } else if (kategori == "logam") {
    return 7000;
  }

  return 0;
}

// Menghitung nilai sampah berdasarkan kategori dan berat
int hitungNilaiSampah(String kategori, int berat) {
  int harga = hitungHargaPerKg(kategori);

  return harga * berat;
}

// Menambahkan nilai sampah ke saldo
int tambahSaldo(int saldo, int nilaiSampah) {
  return saldo + nilaiSampah;
}

void main() {
  int saldo = 0;

  int nilaiSampah = hitungNilaiSampah("plastik", 2);

  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Saldo: Rp$saldo");
}