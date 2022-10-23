import 'package:elena/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetSetting extends GetView<HomeController> {
  const BottomSheetSetting({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0))),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const SizedBox(height: 10),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Profil',
                  style: Get.textTheme.subtitle2!
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ),
              TextButton(
                onPressed: () {},
                child: Text(
                  'Keluar',
                  style: Get.textTheme.subtitle2!
                      .copyWith(fontWeight: FontWeight.w400, fontSize: 18),
                ),
              ),
            ],
          ),
        ));
  }
}
