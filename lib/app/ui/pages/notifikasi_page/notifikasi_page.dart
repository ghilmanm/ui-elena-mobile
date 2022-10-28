import 'package:elena/app/ui/utils/constants/colors.dart';
import 'package:elena/app/ui/utils/date_time_extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/notifikasi_controller.dart';

class NotifikasiPage extends GetView<NotifikasiController> {
  const NotifikasiPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: Text(
          'Notifikasi',
          style: Get.textTheme.subtitle2!.copyWith(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: controller.listNotif.length,
        physics: const BouncingScrollPhysics(
            parent: AlwaysScrollableScrollPhysics()),
        itemBuilder: (context, index) {
          return Obx(
            () => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
              child: InkWell(
                onTap: () {
                  controller.listNotif[index].isRead =
                      !controller.listNotif[index].isRead!;
                  controller.listNotif.refresh();
                },
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
                      Flexible(
                        flex: 1,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0, top: 8.0),
                          child: Row(
                            children: [
                              Container(
                                height: 8,
                                width: 8,
                                decoration: BoxDecoration(
                                  color:
                                      controller.listNotif[index].isRead == true
                                          ? Colors.transparent
                                          : Colors.amber,
                                  shape: BoxShape.circle,
                                ),
                              ),
                              const SizedBox(width: 5),
                              Container(
                                height: 45,
                                width: 45,
                                decoration: BoxDecoration(
                                  color: controller.getColor(index),
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Center(
                                  child: Text(
                                    controller.getKategoti(
                                        kategori:
                                            controller.listNotif[index].type),
                                    style: Get.textTheme.subtitle2!.copyWith(
                                        color: TEXT_COLOR_BLACK,
                                        fontSize: 24,
                                        fontWeight: FontWeight.w700,
                                        fontStyle: FontStyle.italic),
                                  ),
                                ),
                              ),
                            ],
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
                              RichText(
                                text: TextSpan(
                                  text:
                                      '${controller.listNotif[index].type} Baru ',
                                  style: Get.textTheme.subtitle2!.copyWith(
                                    color: TEXT_BROWN_GREY,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 18,
                                  ),
                                  children: <TextSpan>[
                                    TextSpan(
                                      text: controller.listNotif[index].matkul,
                                      style: Get.textTheme.subtitle2!.copyWith(
                                        color: TEXT_COLOR_BLACK,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Text(
                                controller.listNotif[index].date != null
                                    ? controller.listNotif[index].date!
                                        .timeAgo(numericDates: false)
                                    : 'No Time',
                                style: Get.textTheme.subtitle2!.copyWith(
                                  color: TEXT_LIGHT_GREY,
                                  fontWeight: FontWeight.w700,
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
