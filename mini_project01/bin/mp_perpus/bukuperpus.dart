import 'peminjaman.dart';
import 'buku.dart';

class BukuPerpus extends Buku implements Peminjaman {
  BukuPerpus(String judul, int stok) : super(judul, stok);

  @override
  void showInfo2() {
    print("Judul Buku: $judul");
    print("Stok: $stok");
    print("=======================");
  }

  @override
  void pinjam() {
    if (stok > 0) {
      stok--;
      print("Buku $judul Dipinjam !");
      showInfo2();
    } else {
      print("Maaf, stok buku $judul sedang habis.");
      print("=======================");
    }
  }

  @override
  void kembali() {
    stok++;
    print("Buku $judul Dikembalikan !");
    showInfo2();
  }
}
