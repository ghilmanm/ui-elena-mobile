import 'package:elena/app/data/models/unfinished_task.dart';
import 'package:get/get.dart';

import '../data/models/akademik.dart';

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
  final listUnfinishedTask = <UnfinishedTask>[
    UnfinishedTask(
      title: 'Quiz 2 - SCM',
      task: '30 soal',
      date: 'Hari ini, 23.59',
      kategori: 'quiz'
    ),
    UnfinishedTask(
        title: 'UAS - KM',
        task: '15 soal',
        date: 'Rabu, 23/06/2021',
        kategori: 'uas'
    ),
  ].obs;
}
