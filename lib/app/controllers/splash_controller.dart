import 'package:elena/app/routes/app_routes.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  final version = '1.0.0'.obs;
  @override
  void onInit() {
    // TODO: implement onInit
    initializeSettings();
    super.onInit();
  }

  Future initializeSettings() async {
    Future.delayed(const Duration(seconds: 3))
        .then((_) => Get.offNamed(AppRoutes.START));
  }
}
