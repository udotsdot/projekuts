import 'package:projekuts/model/ProdukModel.dart';
import 'package:projekuts/provider/ProdukProvider.dart';

class ProdukRepo {
  ProdukProvider _provider = ProdukProvider();

  Future<List<ProdukModel>> getProduk(String kategori) {
    return _provider.getProduk(kategori);
  }
}
