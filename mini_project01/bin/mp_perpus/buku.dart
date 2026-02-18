class Buku {
  String _judul;
  int _stok;

  Buku(this._judul, this._stok);

  String get judul => _judul;
  set judul(String value) {
    if (value.isNotEmpty) {
      _judul = value;
    }
  }

  int get stok => _stok;
  set stok(int value) {
    if (value >= 0) {
      _stok = value;
    }
  }

  void showInfo() {
    print("====== Buku Perpustakaan ======");
    print("Judul Buku: $judul");
    print("Stok Buku: $stok");
    print("======================");
  }
}
