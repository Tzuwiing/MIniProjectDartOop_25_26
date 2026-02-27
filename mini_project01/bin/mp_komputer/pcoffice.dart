import 'produk.dart';

class PcOffice extends Produk {
  PcOffice(String nama, double harga, int stok) : super(nama, harga, stok);

  @override
  double hitungTotalHarga() {
    return harga;
  }

  @override
  void tampilkanInfo() {
    super.tampilkanInfo();
    print("Total Harga : ${formatRupiah(hitungTotalHarga())}\n");
  }
}
