// To parse this JSON data, do
//
//     final matkul = matkulFromJson(jsonString);

import 'dart:convert';

Matkul matkulFromJson(String str) => Matkul.fromJson(json.decode(str));

String matkulToJson(Matkul data) => json.encode(data.toJson());

class Matkul {
  Matkul({
    this.idMatkul,
    this.nmMatkul,
    this.semester,
    this.dosen,
  });

  String? idMatkul;
  String? nmMatkul;
  String? semester;
  List<Dosen>? dosen;

  factory Matkul.fromJson(Map<String, dynamic> json) => Matkul(
        idMatkul: json["id_matkul"],
        nmMatkul: json["nm_matkul"],
        semester: json["semester"],
        dosen: json["dosen"] == null
            ? null
            : List<Dosen>.from(json["dosen"].map((x) => Dosen.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id_matkul": idMatkul,
        "nm_matkul": nmMatkul,
        "semester": semester,
        "dosen": dosen == null
            ? null
            : List<dynamic>.from(dosen!.map((x) => x.toJson())),
      };
}

class Dosen {
  Dosen({
    this.idDosen,
    this.nmDosen,
    this.imgProfile,
    this.jurusan,
    this.nik,
    this.email,
    this.noHp,
  });

  String? idDosen;
  String? nmDosen;
  String? imgProfile;
  String? jurusan;
  String? nik;
  String? email;
  String? noHp;

  factory Dosen.fromJson(Map<String, dynamic> json) => Dosen(
        idDosen: json["id_dosen"],
        nmDosen: json["nm_dosen"],
        imgProfile: json["img_profile"],
        jurusan: json["jurusan"],
        nik: json["nik"],
        email: json["email"],
        noHp: json["no_hp"],
      );

  Map<String, dynamic> toJson() => {
        "id_dosen": idDosen,
        "nm_dosen": nmDosen,
        "img_profile": imgProfile,
        "jurusan": jurusan,
        "nik": nik,
        "email": email,
        "no_hp": noHp,
      };
}
