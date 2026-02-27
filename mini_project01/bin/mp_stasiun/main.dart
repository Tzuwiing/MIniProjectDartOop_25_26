import 'economy_passenger.dart';
import 'bussines_pasengger.dart';
import 'firstclass_passenger.dart';
import 'passenger.dart';

void main() {
  List<Passenger> daftarPassenger = [
    Economy("Andi"),
    Economy("Yanti"),
    Business("Budi"),
    Business("Sari"),
    Firstclass("Anto"),
    Firstclass("Dewi"),
  ];

  for (var penumpang in daftarPassenger) {
    penumpang.printTicket();

    if (penumpang is Economy) {
      print(
        "Jangan lupa tawarkan menu makanan berbayar kepada penumpang ${penumpang.namaPenumpang}!",
      );
    } else if (penumpang is Business) {
      print(
        "Tawarkan minuman gratis kepada Passenger ${penumpang.namaPenumpang}!",
      );
    } else if (penumpang is Firstclass) {
      print(
        "Tawarkan makanan dan minuman gratis kepada Passenger ${penumpang.namaPenumpang}!",
      );
    }
    print("=====================================");
  }
}
  