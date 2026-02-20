import 'penumpang.dart';
import 'tiket.dart';

class Ekonomi extends Penumpang implements Tiket {
  Ekonomi(super._nama, super._rute);
  Ekonomi.jakartaBandung(String nama) : super(nama, "Jakarta - Bandung");
  Ekonomi.jakartaSurabaya(String nama) : super(nama, "Jakarta - Surabaya");
  Ekonomi.jakartaYogyakarta(String nama) : super(nama, "Jakarta - Yogyakarta");
  @override
  double calculateTicketPrice() {
    return 50000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Kelas: Ekonomi");
    print(
      "Fasilitas: Kursi standar, AC, Toilet umum, Makanan dan minuman tidak disediakan",
    );
  }
}
