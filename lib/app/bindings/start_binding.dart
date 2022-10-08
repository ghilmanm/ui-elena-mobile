
import 'package:get/get.dart';
import '../controllers/start_controller.dart';


class StartBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<StartController>(() => StartController());
        // Get.put<StartController>(StartController());
  }
}