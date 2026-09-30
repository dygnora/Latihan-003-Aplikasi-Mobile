// Menentukan harga sampah berdasarkan kategori
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

// Menambahkan hasil setor ke saldo
int tambahSaldo(int saldo, int nilaiSampah) {
  return saldo + nilaiSampah;
}

// Menarik saldo
int tarikSaldo(int saldo, int jumlah) {
  if (jumlah < 10000) {
    return saldo;
  }

  if (jumlah > saldo) {
    return saldo;
  }

  return saldo - jumlah;
}

void main() {
  // Skenario 1
  int saldo = 0;

  int nilaiSampah = hitungNilaiSampah("plastik", 2);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 1");
  print("Setor: 2 kg plastik");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");

  print("");

  // Skenario 2
  saldo = 0;

  nilaiSampah = hitungNilaiSampah("kertas", 3);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 2");
  print("Setor: 3 kg kertas");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");

  print("");

  // Skenario 3
  saldo = 0;

  nilaiSampah = hitungNilaiSampah("logam", 1);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 3");
  print("Setor: 1 kg logam");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");

  print("");

  // Skenario 4
  saldo = 50000;

  saldo = tarikSaldo(saldo, 20000);

  print("Skenario 4");
  print("Saldo awal: Rp50000");
  print("Penarikan: Rp20000");
  print("Saldo akhir: Rp$saldo");

  print("");

  // Skenario 5
  saldo = 50000;

  saldo = tarikSaldo(saldo, 5000);

  print("Skenario 5");
  print("Saldo awal: Rp50000");
  print("Penarikan: Rp5000");
  print("Saldo akhir: Rp$saldo");
}