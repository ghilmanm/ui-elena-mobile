import 'package:elena/app/data/models/history_shortcut.dart';
import 'package:elena/app/data/models/unfinished_task.dart';
import 'package:elena/app/ui/pages/home_page/bottom_filter.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../data/models/akademik.dart';
import '../data/models/jurusan.dart';
import '../ui/pages/home_page/bottom_setting.dart';

class HomeController extends GetxController {
  final user = 'Karina, M. Ti'.obs;
  final listAkademik = <Akademik>[
    Akademik(
        title: 'Pertemuan 12 - ERP',
        ruangKelas: 'Ruang Kelas Online',
        date: 'Kamis, 24/06/2021',
        dosen: 'Dr. Seto Mulyadi',
        link: 'https://zoom.co.uei.56.rhshhv.83yGjk',
        imgUrl: 'assets/image/user1.png'),
    Akademik(
        title: 'Pertemuan 12 - KM',
        ruangKelas: 'Ruang Kelas Online',
        date: 'Jum’at, 25/06/2021',
        dosen: 'Adinda Reva, M. Kom',
        link: 'https://zoom.co.uei.56.rhshhv.83yGjk',
        imgUrl: 'assets/image/user1.png'),
    Akademik(
        title: 'Sesi Dosen Tamu - RPL',
        ruangKelas: 'Ruang Kelas Online',
        date: 'Jum’at, 25/06/2021',
        dosen: 'Karina, M. Ti',
        link: 'https://zoom.co.uei.56.rhshhv.83yGjk',
        imgUrl: 'assets/image/user1.png'),
  ].obs;

  final listJurusan = <Jurusan>[
    Jurusan(
      idJurusan: '1',
      nmJurusan: 'Teknik Infomasi',
      isSelect: false,
    ),
    Jurusan(
      idJurusan: '2',
      nmJurusan: 'Sistem Informasi',
      isSelect: true,
    ),
    Jurusan(
      idJurusan: '3',
      nmJurusan: 'Bisnis Digital',
      isSelect: false,
    ),
  ].obs;

  final listSemester = <Semester>[
    Semester(
      idSemester: '1',
      nmSemester: 'Semester 1',
      isSelect: false,
    ),
    Semester(
      idSemester: '2',
      nmSemester: 'Semester 2',
      isSelect: false,
    ),
    Semester(
      idSemester: '3',
      nmSemester: 'Semester 3',
      isSelect: false,
    ),
    Semester(
      idSemester: '4',
      nmSemester: 'Semester 4',
      isSelect: false,
    ),
    Semester(
      idSemester: '5',
      nmSemester: 'Semester 5',
      isSelect: false,
    ),
    Semester(
      idSemester: '6',
      nmSemester: 'Semester 6',
      isSelect: false,
    ),
    Semester(
      idSemester: '7',
      nmSemester: 'Semester 7',
      isSelect: false,
    ),
    Semester(
      idSemester: '8',
      nmSemester: 'Semester 8',
      isSelect: false,
    ),
  ].obs;

  final listUnfinishedTask = <UnfinishedTask>[
    UnfinishedTask(
        title: 'Quiz 2 - SCM',
        task: '30 soal',
        date: 'Hari ini, 23.59',
        kategori: 'quiz'),
    UnfinishedTask(
        title: 'UAS - KM',
        task: '15 soal',
        date: 'Rabu, 23/06/2021',
        kategori: 'uas'),
  ].obs;

  final listHistory = <HistoryShortcut>[
    HistoryShortcut(
        title: 'Payroll Odoo',
        subtitle: 'Enterprise Resource Planning',
        kategori: 'matkul'),
    HistoryShortcut(
        title: 'Tugas Besar',
        subtitle: 'Proyek Enterprise SI',
        kategori: 'tugas'),
    HistoryShortcut(
        title: 'Quiz 3', subtitle: 'IT Risk Management', kategori: 'quiz'),
  ].obs;

  void submitFilter() {
    final selectedJurusan = [];
    for (Jurusan jurusan
        in listJurusan.where((jurusan) => jurusan.isSelect == true).toList()) {
      selectedJurusan.add(jurusan.nmJurusan);
    }

    final selectedSemester = [];
    for (Semester semester in listSemester
        .where((semester) => semester.isSelect == true)
        .toList()) {
      selectedSemester.add(semester.nmSemester);
    }
    debugPrint('Jurusan yg dipilih : $selectedJurusan');
    debugPrint('Semester yg dipilih : $selectedSemester');
  }

  void clickJurusan(int index) {
    if (listJurusan[index].isSelect != null) {
      listJurusan[index].isSelect = !listJurusan[index].isSelect!;
    }
  }

  void clickSemester(int index) {
    if (listSemester[index].isSelect != null) {
      listSemester[index].isSelect = !listSemester[index].isSelect!;
    }
  }

  String assetKategori(String? kategori) {
    if (kategori == 'matkul') {
      return 'assets/icons/book.png';
    }

    if (kategori == 'tugas') {
      return 'assets/icons/task.png';
    }

    if (kategori == 'quiz') {
      return 'assets/icons/help.png';
    }
    return 'assets/icons/bel.png';
  }

  buttomSetting() {
    Get.bottomSheet(
      const BottomSheetSetting(),
      enterBottomSheetDuration: const Duration(milliseconds: 200),
      exitBottomSheetDuration: const Duration(milliseconds: 200),
    );
  }

  buttomFilter() {
    Get.bottomSheet(
      const BottomSheetFilter(),
      isScrollControlled: true,
      enterBottomSheetDuration: const Duration(milliseconds: 200),
      exitBottomSheetDuration: const Duration(milliseconds: 200),
    );
  }
}
