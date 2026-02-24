import 'tiket.dart';
import 'penumpang.dart';
class Lrt extends Penumpang implements Tiket {
  Lrt(super._nama, super._rute, super._jumlahTiket);
  Lrt.jakartaBandung(String nama, int jumlahTiket) : super(nama, "Jakarta - Bandung", jumlahTiket);
  Lrt.jakartaSurabaya(String nama, int jumlahTiket) : super(nama, "Jakarta - Surabaya", jumlahTiket);
  @override
  double calculateTicketPrice() {
    return 100000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Tipe Transportasi: LRT");
    print(
      "Fasilitas: Kursi semi-premium, AC, Toilet umum, Makanan dan minuman disediakan",
    );
  }
}