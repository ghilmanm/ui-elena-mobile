import 'package:elena/app/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:simple_shadow/simple_shadow.dart';

import '../../../controllers/start_controller.dart';
import '../../utils/constants/colors.dart';

class StartPage extends GetView<StartController> {
  const StartPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SPLASH_BACKGROUND,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 10,
              child: SvgPicture.asset('assets/image/big_elips.svg'),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SimpleShadow(
                    opacity: 0.25,
                    color: Colors.black,
                    offset: const Offset(30, 30),
                    sigma: 7,
                    child: Image.asset('assets/image/boy.png'),
                  ),
                  Text(
                    'Selamat Datang!',
                    style: Get.theme.textTheme.headline4!.copyWith(
                        color: Colors.white,
                        fontSize: 36,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(height: 22),
                  Text(
                    'eLen Mobile Hadir dalam rangka memberikan layanan yang terbaik untuk Anda',
                    style: Get.theme.textTheme.subtitle1!.copyWith(
                        color: const Color(0xFFC6C9CC),
                        fontSize: 18,
                        fontWeight: FontWeight.w600),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      SvgPicture.asset('assets/image/ellipse1.svg'),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: const CircleBorder(),
                              padding: const EdgeInsets.all(20),
                              backgroundColor: BUTTON_COLOR),
                          onPressed: () => Get.offNamed(AppRoutes.LOGIN),
                          child: const Icon(Icons.arrow_forward))
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
