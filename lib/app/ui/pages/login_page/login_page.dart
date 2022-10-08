import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../controllers/login_controller.dart';
import '../../utils/constants/colors.dart';

class LoginPage extends GetView<LoginController> {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 37.0, right: 37),
            child: Column(
              children: [
                const SizedBox(height: 50),
                Text(
                  'Masuk ke eLena',
                  style: Get.textTheme.subtitle2!.copyWith(
                      color: Get.isDarkMode ? null : const Color(0xFF424242),
                      fontWeight: FontWeight.w600,
                      fontSize: 24),
                ),
                const SizedBox(height: 57),
                Form(
                  key: controller.formKey,
                  child: Column(
                    children: [
                      TextField(
                        controller: controller.controllerUser.value,
                        decoration: InputDecoration(
                          labelText: 'Nama Pengguna',
                          labelStyle: Get.textTheme.subtitle2!.copyWith(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color:
                                Get.isDarkMode ? null : const Color(0xff747474),
                          ),
                        ),
                      ),
                      const SizedBox(height: 39),
                      Obx(() => TextField(
                            controller: controller.controllerPass.value,
                            obscureText: controller.isObsecure.value,
                            decoration: InputDecoration(
                              labelText: 'Kata Sandi',
                              labelStyle: Get.textTheme.subtitle2!.copyWith(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Get.isDarkMode
                                    ? null
                                    : const Color(0xff747474),
                              ),
                              suffixIcon: InkWell(
                                onTap: () {
                                  controller.isObsecure.value =
                                      !controller.isObsecure.value;
                                },
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: SvgPicture.asset(
                                    controller.isObsecure.value
                                        ? 'assets/icons/look-pass.svg'
                                        : 'assets/icons/unlook-pass.svg',
                                    color: Get.isDarkMode
                                        ? null
                                        : const Color(0xff747474),
                                  ),
                                ),
                              ),
                            ),
                          )),
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: TextButton(
                      onPressed: () {},
                      child: Text(
                        'Lupa Kata Sandi?',
                        style: Get.textTheme.subtitle2!.copyWith(
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                            color: Get.isDarkMode ? null : BUTTON_COLOR),
                      )),
                ),
                const SizedBox(height: 43),
                SizedBox(
                  width: double.infinity,
                  height: 57,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: BUTTON_COLOR,
                      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(40)),
                    ),
                    child: Text(
                      'Masuk',
                      style: Get.textTheme.subtitle2!.copyWith(
                          fontWeight: FontWeight.w800,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
