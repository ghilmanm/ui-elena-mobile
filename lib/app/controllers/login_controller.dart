
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
class LoginController extends GetxController {
  final controllerUser = TextEditingController().obs;
  final controllerPass = TextEditingController().obs;
  final formKey = GlobalKey();
  final isObsecure = true.obs;
  @override
  void onClose() {
    controllerUser.close();
    controllerPass.close();
    super.onClose();

  }
}