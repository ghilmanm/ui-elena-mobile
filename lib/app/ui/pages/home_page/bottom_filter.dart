import 'package:elena/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/constants/colors.dart';

class BottomSheetFilter extends GetView<HomeController> {
  const BottomSheetFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StatefulBuilder(builder: (context, setState) {
      return Container(
        height: Get.height * 0.8,
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              Text(
                'Pilih Jurusan',
                style: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 6),
              ListView.builder(
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                itemCount: controller.listJurusan.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 6),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          controller.clickJurusan(index);
                        }),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey[700],
                          backgroundColor: BASED_COLOR_GREY,
                          shadowColor: const Color(0xD000000),
                          minimumSize: const Size(0, 42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color: controller.listJurusan[index].isSelect ==
                                        true
                                    ? Colors.black
                                    : Colors.transparent,
                                width: 2),
                          ),
                        ),
                        child: Text(
                          controller.listJurusan[index].nmJurusan ??
                              'Memuat ...',
                          style: Get.textTheme.subtitle2!.copyWith(
                              color: TEXT_COLOR_GREY,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  );
                },
              ),
              const SizedBox(height: 17),
              Text(
                'Pilih Semester',
                style: Get.textTheme.subtitle2!
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 18),
              ),
              const SizedBox(height: 6),
              Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  padding: const EdgeInsets.all(5),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 2,
                    mainAxisSpacing: 2,
                    childAspectRatio: 3,
                  ),
                  shrinkWrap: true,
                  itemCount: controller.listSemester.length,
                  itemBuilder: (context, index) => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () => setState(() {
                          controller.clickSemester(index);
                        }),
                        style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.grey[700],
                          backgroundColor: BASED_COLOR_GREY,
                          shadowColor: const Color(0xD000000),
                          minimumSize: const Size(0, 42),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                            side: BorderSide(
                                color:
                                    controller.listSemester[index].isSelect ==
                                            true
                                        ? Colors.black
                                        : Colors.transparent,
                                width: 2),
                          ),
                        ),
                        child: Text(
                          controller.listSemester[index].nmSemester ??
                              'Memuat ...',
                          style: Get.textTheme.subtitle2!.copyWith(
                              color: TEXT_COLOR_GREY,
                              fontWeight: FontWeight.w400,
                              fontSize: 18),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => controller.submitFilter(),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: BUTTON_COLOR,
                      shadowColor: BUTTON_COLOR,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(40)),
                      elevation: 7.0),
                  child: Text(
                    'Simpan',
                    style: Get.textTheme.subtitle2!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
