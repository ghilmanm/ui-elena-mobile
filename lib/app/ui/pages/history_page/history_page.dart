import 'dart:math';

import 'package:elena/app/ui/utils/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/history_controller.dart';
import '../../utils/constants/colors.dart';

class HistoryPage extends GetView<HistoryController> {
  const HistoryPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Riwayat Aktivitas',
          style: Get.textTheme.subtitle2!
              .copyWith(fontWeight: FontWeight.w700, fontSize: 20),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hari Ini',
              style: Get.textTheme.subtitle2!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            InkWell(
              onTap: () {},
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(
                      offset: Offset(4, 4),
                      blurRadius: 4,
                      color: Color(0x0d000000),
                    ),
                  ],
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Flexible(
                        flex: 1,
                        child: Container(
                          height: 45,
                          width: 45,
                          decoration: BoxDecoration(
                            color:
                                COLOR_LIGHT[Random().nextInt(COLOR_LIGHT.length)],
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Center(
                            child: Text(
                              controller.getKategoti(kategori: 'Quiz'),
                              style: Get.textTheme.subtitle2!.copyWith(
                                  color: TEXT_COLOR_BLACK,
                                  fontSize: 24,
                                  fontWeight: FontWeight.w700,
                                  fontStyle: FontStyle.italic),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Anda telah menyelesaikan Quiz 2',
                              style: Get.textTheme.subtitle2!.copyWith(
                                color: TEXT_BROWN_GREY,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              'Pemrograman web',
                              style: Get.textTheme.subtitle2!.copyWith(
                                color: TEXT_COLOR_BLACK,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              DateTime.parse('2022-11-14 08:02:11')
                                  .timeAgo(numericDates: false),
                              style: Get.textTheme.subtitle2!.copyWith(
                                color: TEXT_LIGHT_GREY,
                                fontWeight: FontWeight.w700,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
