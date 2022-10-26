// To parse this JSON data, do
//
//     final akademik = akademikFromJson(jsonString);

import 'dart:convert';

Akademik akademikFromJson(String str) => Akademik.fromJson(json.decode(str));

String akademikToJson(Akademik data) => json.encode(data.toJson());

class Akademik {
  Akademik({
    this.title,
    this.ruangKelas,
    this.date,
    this.dosen,
    this.link,
    this.imgUrl,
  });

  String? title;
  String? ruangKelas;
  String? date;
  String? dosen;
  String? link;
  String? imgUrl;

  factory Akademik.fromJson(Map<String, dynamic> json) => Akademik(
    title: json["title"],
    ruangKelas: json["ruang_kelas"],
    date: json["date"],
    dosen: json["dosen"],
    link: json["link"],
    imgUrl: json["img_url"],
  );

  List<Akademik> jsonToList(List<dynamic> json) =>
      List<Akademik>.from(json.map((model) => Akademik.fromJson(model)));

  Map<String, dynamic> toJson() => {
    "title": title,
    "ruang_kelas": ruangKelas,
    "date": date,
    "dosen": dosen,
    "link": link,
    "img_url": imgUrl,
  };
}
