import 'ekonomi.dart';
import 'bisnis.dart';
import 'eksekutif.dart';
import 'penumpang.dart';

void main () {

  Ekonomi ekonomi1 = Ekonomi("Rina", "Jakarta - Tokyo")..printTiket();
  Bisnis bisnis1 = Bisnis("Andi", "Jakarta - New York")..printTiket();
  Eksekutif eksekutif1 = Eksekutif("Sari", "Jakarta - London")..printTiket();
  List<Penumpang> daftarPenumpang = [
    Ekonomi.jakartaBandung("Andi"),
    Ekonomi.jakartaSurabaya("Yanti"),
    Ekonomi.jakartaYogyakarta("Budi"),
    Bisnis.jakartaBandung("Sari"),
    Bisnis.jakartaSurabaya("Anto"),
    Bisnis.jakartaYogyakarta("Dewi"),
    Eksekutif.jakartaBandung("Rina"),
    Eksekutif.jakartaSurabaya("Tono"),
    Eksekutif.jakartaYogyakarta("Lina"),
  ];

 
for (var p in daftarPenumpang) {
    if (p is Ekonomi) {
      p.printTiket();
    } else if (p is Bisnis) {
      p.printTiket();
    } else if (p is Eksekutif) {
      p.printTiket();
    }
    print("=====================================");
  }
}