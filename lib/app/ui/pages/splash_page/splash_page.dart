import 'package:elena/app/ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../controllers/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: SPLASH_BACKGROUND,
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned.fill(
              child: Align(
            alignment: Alignment.center,
            child: SvgPicture.asset('assets/image/logo.svg'),
          )),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.18,
            child: const CircularProgressIndicator(),
          ),
          Positioned(
              bottom: 15,
              child: Text(
                'Version ${controller.version}',
                style: context.theme.textTheme.subtitle2!
                    .copyWith(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
