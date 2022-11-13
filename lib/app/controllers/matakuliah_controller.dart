
import 'package:get/get.dart';

import '../data/models/matkul.dart';
class MatakuliahController extends GetxController {
  final listMatkul = [
    Matkul(
      idMatkul: '1',
      nmMatkul: 'Rekayasa Perangkat Lunak',
      semester: '4',
      dosen: [
        Dosen(
          idDosen: '1',
          nmDosen: 'Adinda Reva, M. Kom',
          imgProfile: 'assets/image/user1.jpg', // url img
        ),
        Dosen(
          idDosen: '2',
          nmDosen: 'Karina, M. TI',
          imgProfile: 'assets/image/user2.jpg', // url img
        ),
        Dosen(
          idDosen: '3',
          nmDosen: 'Dr. Seto Mulyadi',
          imgProfile: 'assets/image/user3.jpg', // url img
        ),
        Dosen(
          idDosen: '2',
          nmDosen: 'Test, M. Kom',
          imgProfile: 'assets/image/user1.jpg', // url img
        ),
      ]
    ),
    Matkul(
        idMatkul: '2',
        nmMatkul: 'Sistem Informasi Manajemen',
        semester: '5',
        dosen: [
          Dosen(
            idDosen: '1',
            nmDosen: 'Adinda Reva, M. Kom',
            imgProfile: 'assets/image/user1.jpg', // url img
          ),
          Dosen(
            idDosen: '3',
            nmDosen: 'Dr. Seto Mulyadi',
            imgProfile: 'assets/image/user3.jpg', // url img
          ),
        ]
    )
  ].obs;

}