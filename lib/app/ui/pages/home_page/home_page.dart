import 'package:elena/app/ui/pages/home_page/info_akademik.dart';
import 'package:elena/app/ui/pages/home_page/search_component.dart';
import 'package:elena/app/ui/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../global_widgets/appbar.dart';

import '../../../controllers/home_controller.dart';

class HomePage extends GetView<HomeController> {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
        preferredSize: Size.fromHeight(87.0),
        child: Appbar(),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 20.0, right: 20, top: 20.0),
              child: SearchAndFilter(),
            ),
            const SizedBox(height: 15),
            // Info akademik
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Informasi Akademik',
                    style: Get.textTheme.subtitle2!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: Get.textTheme.subtitle2!.copyWith(
                        color: Get.isDarkMode ? null : BUTTON_COLOR,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 148,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 22),
                  padding: const EdgeInsets.only(right: 20.0, left: 20.0),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listAkademik.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InfoAkademik(index);
                  }),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Belum Dikerjakan',
                    style: Get.textTheme.subtitle2!.copyWith(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Lihat Semua',
                      style: Get.textTheme.subtitle2!.copyWith(
                        color: Get.isDarkMode ? null : BUTTON_COLOR,
                        fontSize: 14,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 166,
              child: ListView.separated(
                  separatorBuilder: (BuildContext context, int index) =>
                      const SizedBox(width: 22),
                  padding: const EdgeInsets.only(
                    right: 20.0,
                    left: 20.0,
                  ),
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: controller.listUnfinishedTask.length,
                  itemBuilder: (BuildContext context, int index) {
                    return InkWell(
                      onTap: () {},
                      customBorder: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Ink(
                        width: 176,
                        height: 166,
                        padding: const EdgeInsets.only(
                            left: 15.0, right: 15.0, bottom: 15.0, top: 15.0),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF9F9F9),
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: const [
                            BoxShadow(
                              offset: Offset(4, 4),
                              blurRadius: 4,
                              color: Color(0x0d000000),
                            ),
                          ],
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SvgPicture.asset(
                                controller.listUnfinishedTask[index].kategori ==
                                        'quiz'
                                    ? 'assets/icons/tanda_tanya.svg'
                                    : 'assets/icons/tanda_seru.svg'),
                            Text(
                              controller.listUnfinishedTask[index].title ??
                                  'Memuat...',
                              style: Get.textTheme.subtitle2!.copyWith(
                                  fontWeight: FontWeight.w700, fontSize: 18),
                            ),
                            const SizedBox(height: 5),
                            Row(
                              children: [
                                Image.asset('assets/icons/red_tanda_tanya.png'),
                                const SizedBox(width: 4),
                                Text(
                                  controller.listUnfinishedTask[index].task ??
                                      'Memuat..',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Image.asset('assets/icons/red_clock.png'),
                                const SizedBox(width: 4),
                                Text(
                                  controller.listUnfinishedTask[index].date ??
                                      'Memuat..',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Text(
                  'Terakhir Dilihat',
                  style: Get.textTheme.subtitle2!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 128,
              child: ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const SizedBox(width: 22),
                padding: const EdgeInsets.only(
                  right: 20.0,
                  left: 20.0,
                ),
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: controller.listUnfinishedTask.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 278,
                    height: 128,
                    decoration: BoxDecoration(
                      color: Colors.indigo,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Payroll Odoo',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                    color: Colors.white,
                                    fontSize: 18,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                                Text(
                                  'Enterprise Resource Planning',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                    color: const Color(0xFFC2BBBB),
                                    fontSize: 12,
                                    fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              SvgPicture.asset('assets/image/bg_history.svg'),
                              Image.asset('assets/icons/book.png'),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 60),
          ],
        ),
      ),
    );
  }
}
