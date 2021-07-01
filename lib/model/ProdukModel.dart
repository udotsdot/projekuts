import 'dart:convert';

List<ProdukModel> produkFromJson(String str) {
  final jsonData = jsonDecode(str);
  return List<ProdukModel>.from(jsonData.map((x) => ProdukModel.fromJson(x)));
}

class ProdukModel {
  String id;
  String nama_produk;
  String harga;
  String gambar;
  String bbm;
  String kursi;
  String kecepatan;
  String status;
  String kategori;

  ProdukModel({
    this.id,
    this.nama_produk,
    this.harga,
    this.gambar,
    this.bbm,
    this.kursi,
    this.kecepatan,
    this.status,
    this.kategori,
  });

  factory ProdukModel.fromJson(Map<String, dynamic> json) => ProdukModel(
        id: json['id'],
        nama_produk: json['nama_produk'],
        harga: json['harga'],
        gambar: json['gambar'],
        bbm: json['bbm'],
        kursi: json['kursi'],
        kecepatan: json['kecepatan'],
        status: json['status'],
        kategori: json['kategori'],
      );

  Map<String, dynamic> toJson() => {
        'id': id,
        'nama_produk': nama_produk,
        'harga': harga,
        'gambar': gambar,
        'bbm': bbm,
        'kursi': kursi,
        'kecepatan': kecepatan,
        'status': status,
        'kategori': kategori,
      };
}
