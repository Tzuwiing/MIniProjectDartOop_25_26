import 'package:intl/intl.dart';
import 'tiket.dart';

abstract class Penumpang implements Tiket {
  String _nama;
  String _rute;

  Penumpang(this._nama, this._rute);


   double calculateTicketPrice();
  String _formatRupiah(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp. ',
      decimalDigits: 0,
    ).format(amount);
  }

  String get nama => _nama;
  set nama(String value) {
    if (value.isNotEmpty) {
      _nama = value;
    }
  }

  String get rute => _rute;
  set rute(String value) {
    if (value.isNotEmpty) {
      _rute = value;
    }
  }

@override
  void printTiket() {
    print("======= Tiket $runtimeType ========");
    print("Nama Penumpang: $_nama");
    print("Rute Perjalanan: $_rute");
    print("Harga Tiket: ${_formatRupiah(calculateTicketPrice())}");
  }
  
  }
