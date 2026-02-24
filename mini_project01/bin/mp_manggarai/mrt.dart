import 'tiket.dart';
import 'penumpang.dart';

class Mrt extends Penumpang implements Tiket {
  Mrt(super._nama, super._rute, super._jumlahTiket);
  Mrt.jakartaBandung(String nama, int jumlahTiket) : super(nama, "Jakarta - Bandung", jumlahTiket);

  @override
  double calculateTicketPrice() {
    return 200000;
  }

  @override
  void printTiket() {
    super.printTiket();
    print("Tipe Transportasi: LRT");
    print(
      "Fasilitas: Kursi mewah, AC, Toilet pribadi, Makanan dan minuman premium",
    );
  }
}