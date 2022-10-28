
import 'package:get/get.dart';
import '../controllers/kontak_dosen_controller.dart';


class KontakDosenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<KontakDosenController>(() => KontakDosenController());
        // Get.put<KontakDosenController>(KontakDosenController());
  }
}