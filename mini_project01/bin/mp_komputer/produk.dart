import 'package:intl/intl.dart';

abstract class Produk {
  String _nama;
  double _harga;
  int _stok;

  Produk(this._nama, this._harga, this._stok);

  double hitungTotalHarga();

  String formatRupiah(double amount) {
    return NumberFormat.currency(
      locale: 'id_ID',
      symbol: 'Rp ',
      decimalDigits: 0,
    ).format(amount);
  }

  String get nama => _nama;
  set nama(String value) {
    if (value.isNotEmpty) {
      _nama = value;
    }
  }

  double get harga => _harga;
  set harga(double value) {
    if (value > 0) {
      _harga = value;
    }
  }

  int get stok => _stok;
  set stok(int value) {
    if (value >= 0) {
      _stok = value;
    }
  }

  void tampilkanInfo() {
    print("--- Detail Produk ---");
    print("Nama Produk : $nama");
    print("Sisa Stok   : $stok unit");
    print("Harga Awal  : ${formatRupiah(harga)}");
  }
}
