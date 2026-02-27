import 'produk.dart';
import 'diskon.dart';
import 'garansi.dart';

class Laptop extends Produk with Diskon, GaransiTambahan {
  Laptop(String nama, double harga, int stok) : super(nama, harga, stok);
  @override
  double hitungTotalHarga() {
    double potongan = hitunganPotongan(harga);
    return harga - potongan + biayaGaransi;
  }

  @override
  void tampilkanInfo() {
    super.tampilkanInfo(); 
    
    if (persenDiskon > 0) {
      print("Diskon      : $persenDiskon%");
     
      print("Potongan    : ${formatRupiah(harga - hitungTotalHarga() + biayaGaransi)}");
    }
    
    if (biayaGaransi > 0) {
  
      print("Biaya Garansi Tambahan: ${formatRupiah(biayaGaransi)}");
    }
    

    print("Total Harga : ${formatRupiah(hitungTotalHarga())}\n");
  }
}