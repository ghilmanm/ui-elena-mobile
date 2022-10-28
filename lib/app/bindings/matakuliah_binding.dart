
import 'package:get/get.dart';
import '../controllers/matakuliah_controller.dart';


class MatakuliahBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MatakuliahController>(() => MatakuliahController());
        // Get.put<MatakuliahController>(MatakuliahController());
  }
}