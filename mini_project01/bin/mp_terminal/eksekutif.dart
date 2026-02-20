import 'tiket.dart';
import 'penumpang.dart';

class Eksekutif extends Penumpang implements Tiket {
  Eksekutif(super._nama, super._rute);
  Eksekutif.jakartaBandung(String nama) : super(nama, "Jakarta - Bandung");
  Eksekutif.jakartaSurabaya(String nama) : super(nama, "Jakarta - Surabaya");
  Eksekutif.jakartaYogyakarta(String nama) : super(nama, "Jakarta - Yogyakarta");
  @override
  double calculateTicketPrice() {
    return 200000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Kelas: Eksekutif");
    print(
      "Fasilitas: Kursi mewah, AC, Toilet pribadi, Makanan dan minuman premium",
    );
  }
}