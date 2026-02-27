mixin Diskon {
  double persenDiskon = 0.0;

  double hitunganPotongan(double harga) {
    return harga * (persenDiskon / 100);
  }
}