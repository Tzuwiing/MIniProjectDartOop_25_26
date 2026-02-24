import 'package:intl/intl.dart';
import 'tiket.dart';

abstract class Penumpang implements Tiket {
  String _nama;
  String _rute;
  int _jumlahTiket;

  Penumpang(this._nama, this._rute, this._jumlahTiket );


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

  int get jumlahTiket => _jumlahTiket;
  set jumlahTiket(int value) {
    if (value > 0) {
      _jumlahTiket = value;
    }
  }

@override
  void printTiket() {
    print("======= Tiket $runtimeType ========");
    print("Nama Penumpang: $_nama");
    print("Jumlah Tiket: $_jumlahTiket");
    print("Rute Perjalanan: $_rute");
    print("Harga Tiket: ${_formatRupiah(calculateTicketPrice())}");
  }
  
  }
