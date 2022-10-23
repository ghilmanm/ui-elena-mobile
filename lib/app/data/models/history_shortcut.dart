// To parse this JSON data, do
//
//     final historyShortcut = historyShortcutFromJson(jsonString);

import 'dart:convert';

HistoryShortcut historyShortcutFromJson(String str) =>
    HistoryShortcut.fromJson(json.decode(str));

String historyShortcutToJson(HistoryShortcut data) =>
    json.encode(data.toJson());

class HistoryShortcut {
  HistoryShortcut({
    this.title,
    this.subtitle,
    this.kategori,
  });

  String? title;
  String? subtitle;
  String? kategori;

  factory HistoryShortcut.fromJson(Map<String, dynamic> json) =>
      HistoryShortcut(
        title: json["title"],
        subtitle: json["subtitle"],
        kategori: json["kategori"],
      );

  Map<String, dynamic> toJson() => {
        "title": title,
        "subtitle": subtitle,
        "kategori": kategori,
      };
}
