
import 'package:elena/app/controllers/home_controller.dart';
import 'package:elena/app/controllers/kontak_dosen_controller.dart';
import 'package:elena/app/controllers/matakuliah_controller.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
import '../controllers/history_controller.dart';


class DashboardBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DashboardController>(() => DashboardController());
    Get.lazyPut<HomeController>(() => HomeController());
    Get.lazyPut<MatakuliahController>(() => MatakuliahController());
    Get.lazyPut<KontakDosenController>(() => KontakDosenController());
    Get.lazyPut<HistoryController>(() => HistoryController());
        // Get.put<DashboardController>(DashboardController());
  }
}