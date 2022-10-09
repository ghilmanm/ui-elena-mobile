import 'package:elena/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';

class InfoAkademik extends GetView<HomeController> {
  final int index;
  const InfoAkademik(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Ink(
        height: 148,
        width: 324,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: COLOR_AKADEMI[index % COLOR_AKADEMI.length]),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 27,
              child: SvgPicture.asset(
                  'assets/image/bg_akademik1.svg',
                  color: COLOR_AKADEMI_BG[
                  index % COLOR_AKADEMI.length]),
            ),
            Positioned(
              bottom: 0,
              right: 53,
              child: SvgPicture.asset(
                  'assets/image/bg_akademik2.svg',
                  color: COLOR_AKADEMI_BG[
                  index % COLOR_AKADEMI.length]),
            ),
            Positioned(
              top: 9,
              right: 11,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  SvgPicture.asset(
                      'assets/image/bg_akademik3.svg'),
                  SvgPicture.asset(
                    'assets/icons/vidconf.svg',
                    color: const Color(0xFFDCDCDC),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    controller.listAkademik[index].title ??
                        'Memuat',
                    style: Get.textTheme.subtitle2!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 18),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    controller.listAkademik[index].ruangKelas ??
                        'Memuat',
                    style: Get.textTheme.subtitle2!.copyWith(
                        color: Colors.white,
                        fontWeight: FontWeight.w700,
                        fontSize: 14),
                  ),
                  Text(
                    controller.listAkademik[index].date ??
                        'Memuat',
                    style: Get.textTheme.subtitle2!.copyWith(
                        color: const Color(0xFFBBC1C2),
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.italic,
                        fontSize: 12),
                  ),
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              child: Padding(
                padding: const EdgeInsets.only(
                    right: 12.0, left: 12.0, bottom: 12.0),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Image.asset(controller
                          .listAkademik[index].imgUrl ??
                          'assets/image/user_photo.png'),
                      Container(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          controller
                              .listAkademik[index].dosen ??
                              'Memuat',
                          textAlign: TextAlign.center,
                          style: Get.textTheme.subtitle2!
                              .copyWith(
                              color:
                              const Color(0xFFBBC1C2),
                              fontWeight: FontWeight.w700,
                              fontStyle: FontStyle.italic,
                              fontSize: 12),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
                margin: const EdgeInsets.all(15),
                height: 26,
                width: 125,
                decoration: BoxDecoration(
                  color: const Color(0xFFF19663),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  controller.listAkademik[index].link ??
                      'Memuat...',
                  overflow: TextOverflow.clip,
                  style: Get.textTheme.subtitle2!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.italic,
                      fontSize: 14),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
