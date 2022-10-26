// To parse this JSON data, do
//
//     final notif = notifFromJson(jsonString);

import 'dart:convert';

Notif notifFromJson(String str) => Notif.fromJson(json.decode(str));

String notifToJson(Notif data) => json.encode(data.toJson());

class Notif {
  Notif({
    this.idNotif,
    this.matkul,
    this.type,
    this.isRead,
    this.date,
  });

  String? idNotif;
  String? matkul;
  String? type;
  bool? isRead;
  DateTime? date;

  factory Notif.fromJson(Map<String, dynamic> json) => Notif(
    idNotif: json["id_notif"],
    matkul: json["matkul"],
    type: json["type"],
    isRead: json["is_read"],
    date: json["date"] != null ? DateTime.parse(json["date"]) : null,
  );

  List<Notif> jsonToList(List<dynamic> json) =>
      List<Notif>.from(json.map((model) => Notif.fromJson(model)));

  Map<String, dynamic> toJson() => {
    "id_notif": idNotif,
    "matkul": matkul,
    "type": type,
    "is_read": isRead,
    "date": date?.toIso8601String(),
  };
}




