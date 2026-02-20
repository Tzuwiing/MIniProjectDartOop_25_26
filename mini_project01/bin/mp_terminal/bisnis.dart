import 'tiket.dart';
import 'penumpang.dart';
class Bisnis extends Penumpang implements Tiket {
  Bisnis(super._nama, super._rute);
  Bisnis.jakartaBandung(String nama) : super(nama, "Jakarta - Bandung");
  Bisnis.jakartaSurabaya(String nama) : super(nama, "Jakarta - Surabaya");
  Bisnis.jakartaYogyakarta(String nama) : super(nama, "Jakarta - Yogyakarta");
  @override
  double calculateTicketPrice() {
    return 100000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Kelas: Bisnis");
    print(
      "Fasilitas: Kursi semi-premium, AC, Toilet umum, Makanan dan minuman disediakan",
    );
  }
}