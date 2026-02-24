import 'krl.dart';
import 'mrt.dart';
import 'lrt.dart';
import 'tiket.dart';
import 'penumpang.dart';
import 'tiket.dart';

void main() {
  var penumpang1 = Krl.jakartaBandung("Andi", 2);
  var penumpang2 = Lrt.jakartaSurabaya("Budi", 1);
  var penumpang3 = Mrt.jakartaBandung("Citra", 3);

  penumpang1.printTiket();
  print("");
  penumpang2.printTiket();
  print("");
  penumpang3.printTiket();
}