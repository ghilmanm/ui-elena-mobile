import 'package:get/get.dart';

import '../data/models/matkul.dart';

class KontakDosenController extends GetxController {
  final listDosen = [
    Dosen(
      idDosen: '1',
      nmDosen: 'Adinda Reva, M. Kom',
      imgProfile: 'assets/image/user1.jpg',
      jurusan: 'TI',
      nik: '72000120',
      noHp: '08123123112',
      email: 'adindareva@nurulfikri.ac.id'
    ),
    Dosen(
        idDosen: '2',
        nmDosen: 'Karina, M. TI',
        imgProfile: 'assets/image/user2.jpg',
        jurusan: 'SI',
        nik: '72000120',
        noHp: '08123123112',
        email: 'karina@nurulfikri.ac.id'
    ),
    Dosen(
        idDosen: '3',
        nmDosen: 'Alea, M. Kom',
        imgProfile: 'assets/image/user3.jpg',
        jurusan: 'TI',
        nik: '72000120',
        noHp: '08123123112',
        email: 'Alea@nurulfikri.ac.id'
    ),
    Dosen(
        idDosen: '4',
        nmDosen: 'Adinda Reva, M. Kom',
        imgProfile: 'assets/image/user1.jpg',
        jurusan: 'BD',
        nik: '72000120',
        noHp: '08123123112',
        email: 'adindareva@nurulfikri.ac.id'
    ),
  ];
  final listDosenTi = <Dosen>[].obs;
  final listDosenSi = <Dosen>[].obs;
  final listDosenBd = <Dosen>[].obs;

  @override
  void onInit() {
    getDosen();
    super.onInit();
  }
  void getDosen() {
    for (Dosen dosen in listDosen) {
      if (dosen.jurusan == 'TI') {
        listDosenTi.add(dosen);
      }

      if (dosen.jurusan == 'SI') {
        listDosenSi.add(dosen);
      }

      if (dosen.jurusan == 'BD') {
        listDosenBd.add(dosen);
      }
    }
  }
}
