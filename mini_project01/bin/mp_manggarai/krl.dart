import 'penumpang.dart';
import 'tiket.dart';

class Krl extends Penumpang implements Tiket {
  Krl(super._nama, super._rute, super._jumlahTiket);
  Krl.jakartaBandung(String nama, int jumlahTiket)  : super(nama, "Jakarta - Bandung", jumlahTiket);
  Krl.jakartaSurabaya(String nama, int jumlahTiket) : super(nama, "Jakarta - Surabaya", jumlahTiket);
  Krl.jakartaYogyakarta(String nama, int jumlahTiket) : super(nama, "Jakarta - Yogyakarta", jumlahTiket);
  @override
  double calculateTicketPrice() {
    return 50000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Tipe Transportasi: KRL");
    print(
      "Fasilitas: Kursi standar, AC, Toilet umum, Makanan dan minuman tidak disediakan",
    );
  }
}
