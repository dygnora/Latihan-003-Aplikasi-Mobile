// BR-01
// Harga sampah per kg berbeda berdasarkan kategori:
// Plastik = Rp5.000/kg
// Kertas  = Rp3.000/kg
// Logam   = Rp7.000/kg
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


// BR-04
// Berat sampah yang disetor harus lebih dari 0 kg
int hitungNilaiSampah(String kategori, int berat) {
  if (berat <= 0) {
    return 0;
  }

  int harga = hitungHargaPerKg(kategori);

  return harga * berat;
}


// Menambahkan hasil setor ke saldo
int tambahSaldo(int saldo, int nilaiSampah) {
  return saldo + nilaiSampah;
}


// BR-02
// Penarikan saldo minimal Rp10.000
//
// BR-03
// Saldo tidak boleh menjadi minus
int tarikSaldo(int saldo, int jumlah) {

  // BR-02: Jika penarikan kurang dari Rp10.000,
  // penarikan tidak dapat dilakukan
  if (jumlah < 10000) {
    return saldo;
  }

  // BR-03: Jika jumlah penarikan lebih besar dari saldo,
  // penarikan tidak dapat dilakukan agar saldo tidak minus
  if (jumlah > saldo) {
    return saldo;
  }

  return saldo - jumlah;
}

//TEST PROGRAM-------------------------------------------------------------------------

void main() {

  // Skenario 1
  // BR-01: Menguji kategori plastik
  int saldo = 0;

  int nilaiSampah = hitungNilaiSampah("plastik", 2);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 1");
  print("Setor: 2 kg plastik");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");
  print("");


  // Skenario 2
  // BR-01: Menguji kategori kertas
  saldo = 0;

  nilaiSampah = hitungNilaiSampah("kertas", 3);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 2");
  print("Setor: 3 kg kertas");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");
  print("");


  // Skenario 3
  // BR-01: Menguji kategori logam
  saldo = 0;

  nilaiSampah = hitungNilaiSampah("logam", 2);
  saldo = tambahSaldo(saldo, nilaiSampah);

  print("Skenario 3");
  print("Setor: 2 kg logam");
  print("Nilai sampah: Rp$nilaiSampah");
  print("Saldo: Rp$saldo");
  print("");


  // Skenario 4
  // BR-02 dan BR-03:
  // Penarikan Rp20.000 memenuhi batas minimum
  // dan saldo mencukupi

  saldo = 50000;
  saldo = tarikSaldo(saldo, 20000);

  print("Skenario 4");
  print("Saldo awal: Rp50000");
  print("Penarikan: Rp20000");
  print("Saldo akhir: Rp$saldo");
  print("");


  // Skenario 5
  // BR-02:
  // Penarikan Rp5.000 tidak diperbolehkan
  // karena kurang dari minimum Rp10.000

  saldo = 50000;
  saldo = tarikSaldo(saldo, 5000);

  print("Skenario 5");
  print("Saldo awal: Rp50000");
  print("Penarikan: Rp5000");
  print("Saldo akhir: Rp$saldo");
  print("");


  // Skenario 6
  // BR-03 dan BR-04:
  // Menguji saldo tidak boleh minus
  // dan berat sampah tidak boleh 0 kg

  saldo = 20000;

  saldo = tarikSaldo(saldo, 30000);

  nilaiSampah = hitungNilaiSampah("plastik", 0);

  print("Skenario 6");
  print("Saldo awal: Rp20000");
  print("Penarikan: Rp30000");
  print("Saldo setelah penarikan: Rp$saldo");
  print("Setor: 0 kg plastik");
  print("Nilai sampah: Rp$nilaiSampah");
}

