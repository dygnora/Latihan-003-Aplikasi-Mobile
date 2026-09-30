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

//
int tarikSaldo(int saldo, int jumlah) {
  // BR-02 Menentukan apakah jumlah Minimal tarik Rp10.000
  if (jumlah < 10000) {
    return saldo;
  }

  if (jumlah > saldo) {
    return saldo;
  }

  return saldo - jumlah;
}

void main() {
  int saldo = 50000;

  saldo = tarikSaldo(saldo, 20000);

  print("Saldo: Rp$saldo");
}