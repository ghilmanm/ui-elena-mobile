
import 'package:get/get.dart';
class HistoryController extends GetxController {

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