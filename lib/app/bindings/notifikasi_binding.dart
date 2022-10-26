
import 'package:get/get.dart';
import '../controllers/notifikasi_controller.dart';


class NotifikasiBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<NotifikasiController>(() => NotifikasiController());
        // Get.put<NotifikasiController>(NotifikasiController());
  }
}