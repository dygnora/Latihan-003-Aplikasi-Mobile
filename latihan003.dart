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

void main() {
  print(hitungHargaPerKg("plastik"));
  print(hitungHargaPerKg("kertas"));
  print(hitungHargaPerKg("logam"));
}