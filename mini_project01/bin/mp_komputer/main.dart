import 'laptop.dart';
import 'pcgaming.dart';
import 'pcoffice.dart';

void main() {
  print("=== SISTEM TOKO KOMPUTER HAHAHIAHIHAHYAU ===\n");
  Laptop macbook = Laptop("MacBook Pro M3", 25000000, 5)
    ..biayaGaransi = 1000000
    ..persenDiskon = 10
    ..tampilkanInfo();

  PcGaming gamingPc = PcGaming("Alienware Aurora R15", 35000000, 3)
    ..biayaGaransi = 1000000
    ..tampilkanInfo();

  PcOffice officePc = PcOffice("Dell OptiPlex 7080", 15000000, 10)
    ..tampilkanInfo();
}
