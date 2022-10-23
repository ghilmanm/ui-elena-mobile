// To parse this JSON data, do
//
//     final jurusan = jurusanFromJson(jsonString);

import 'dart:convert';

Jurusan jurusanFromJson(String str) => Jurusan.fromJson(json.decode(str));

String jurusanToJson(Jurusan data) => json.encode(data.toJson());

class Jurusan {
  Jurusan({
    this.idJurusan,
    this.nmJurusan,
    this.isSelect,
  });

  String? idJurusan;
  String? nmJurusan;
  bool? isSelect;

  factory Jurusan.fromJson(Map<String, dynamic> json) => Jurusan(
    idJurusan: json["id_jurusan"],
    nmJurusan: json["nm_jurusan"],
    isSelect: json["isSelect"],
  );

  Map<String, dynamic> toJson() => {
    "id_jurusan": idJurusan,
    "nm_jurusan": nmJurusan,
    "isSelect": isSelect,
  };
}

Semester semesterFromJson(String str) => Semester.fromJson(json.decode(str));

String semesterToJson(Semester data) => json.encode(data.toJson());

class Semester {
  Semester({
    this.idSemester,
    this.nmSemester,
    this.isSelect,
  });

  String? idSemester;
  String? nmSemester;
  bool? isSelect;

  factory Semester.fromJson(Map<String, dynamic> json) => Semester(
    idSemester: json["id_semester"],
    nmSemester: json["nm_semester"],
    isSelect: json["isSelect"],
  );

  Map<String, dynamic> toJson() => {
    "id_semester": idSemester,
    "nm_semester": nmSemester,
    "isSelect": isSelect,
  };
}
