import 'dart:ui';

import 'package:elena/app/data/models/notif.dart';
import 'package:elena/app/ui/utils/constants/colors.dart';
import 'package:get/get.dart';

class NotifikasiController extends GetxController {
  final isLoading = false.obs;
  final listNotif = <Notif>[
    Notif(
      idNotif: '1',
      matkul: 'Enterprise Resources Planning',
      type: 'Quiz',
      isRead: false,
      date: DateTime.parse('2022-10-26 08:02:11'),
    ),
    Notif(
      idNotif: '2',
      matkul: 'Pemrograman Web Lanjutan ',
      type: 'Materi',
      isRead: false,
      date: DateTime.parse('2022-10-26 08:32:11'),
    ),
    Notif(
      idNotif: '3',
      matkul: 'Rekayasa Perangkat Lunak ',
      type: 'Tugas',
      isRead: false,
      date: DateTime.parse('2022-10-26 08:42:11'),
    ),
    Notif(
      idNotif: '4',
      matkul: 'Pemrograman Web Lanjutan',
      type: 'Quiz',
      isRead: false,
      date: DateTime.parse('2022-10-26 08:12:11'),
    ),
    Notif(
      idNotif: '5',
      matkul: 'Rekayasa Perangkat Lunak ',
      type: 'Tugas',
      isRead: false,
      date: DateTime.parse('2022-10-26 20:01:11'),
    ),
    Notif(
      idNotif: '6',
      matkul: 'Enterprise Resources Planning',
      type: 'Quiz',
      isRead: false,
      date: DateTime.parse('2022-10-26 20:50:11'),
    ),
    Notif(
      idNotif: '7',
      matkul: 'Enterprise Resources Planning',
      type: 'Materi',
      isRead: false,
      date: DateTime.parse('2022-10-26 08:40:11'),
    ),
    Notif(
      idNotif: '8',
      matkul: 'Enterprise Resources Planning',
      type: 'Materi',
      isRead: false,
      date: DateTime.parse('2022-10-26 20:23:11'),
    ),
  ].obs;

  Color getColor(int index) {
    if(listNotif[index].type == 'Quiz'){
      return VISUAL_LIGHT_PURPLE;
    }
    if(listNotif[index].type == 'Materi'){
      return VISUAL_LIGHT_YELLOW;
    }
    if(listNotif[index].type == 'Tugas'){
      return VISUAL_LIGHT_GREEN;
    }
    return VISUAL_LIGHT_RED;
  }

  String getKategoti({String? kategori}) {
    if (kategori == 'Quiz') {
      return '?';
    }
    if (kategori == 'Materi') {
      return '#';
    }
    if (kategori == 'Tugas') {
      return '!';
    }
    return '\$';
  }
}
