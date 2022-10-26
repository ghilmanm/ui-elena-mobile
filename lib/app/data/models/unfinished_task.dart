// To parse this JSON data, do
//
//     final unfinishedTask = unfinishedTaskFromJson(jsonString);

import 'dart:convert';

UnfinishedTask unfinishedTaskFromJson(String str) =>
    UnfinishedTask.fromJson(json.decode(str));

String unfinishedTaskToJson(UnfinishedTask data) => json.encode(data.toJson());

class UnfinishedTask {
  UnfinishedTask({
    this.title,
    this.task,
    this.date,
    this.kategori,
  });

  String? title;
  String? task;
  String? date;
  String? kategori;

  factory UnfinishedTask.fromJson(Map<String, dynamic> json) => UnfinishedTask(
        title: json["title"],
        task: json["task"],
        date: json["date"],
        kategori: json["kategori"],
      );

  List<UnfinishedTask> jsonToList(List<dynamic> json) =>
      List<UnfinishedTask>.from(json.map((model) => UnfinishedTask.fromJson(model)));

  Map<String, dynamic> toJson() => {
        "title": title,
        "task": task,
        "date": date,
        "kategori": kategori,
      };
}
