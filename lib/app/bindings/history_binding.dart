
import 'package:get/get.dart';
import '../controllers/history_controller.dart';


class HistoryBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HistoryController>(() => HistoryController());
        // Get.put<HistoryController>(HistoryController());
  }
}