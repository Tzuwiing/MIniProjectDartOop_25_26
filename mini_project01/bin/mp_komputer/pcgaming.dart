import 'produk.dart';
import 'garansi.dart';

class PcGaming extends Produk with GaransiTambahan {
  PcGaming(String nama, double harga, int stok) : super(nama, harga, stok);
  @override
  double hitungTotalHarga() {
    return harga + biayaGaransi;
  }

  @override
  void tampilkanInfo(){
    super.tampilkanInfo();
    if (biayaGaransi > 0) {
      print("Biaya Garansi Tambahan:${formatRupiah(biayaGaransi)}");
    }
   print("Total Harga : ${formatRupiah(hitungTotalHarga())}\n");
  }
}