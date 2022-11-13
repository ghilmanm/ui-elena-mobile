import 'dart:math';

import 'package:elena/app/controllers/kontak_dosen_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../data/models/matkul.dart';
import '../../utils/constants/colors.dart';

class ItemDosen extends GetView<KontakDosenController> {
  final Dosen dosen;
  const ItemDosen({
    Key? key,
    required this.dosen,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      customBorder: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Ink(
        height: 77,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: COLOR_LIGHT[Random().nextInt(COLOR_LIGHT.length)],
        ),
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ClipOval(
                child: Container(
                  color: Colors.white,
                  child: SizedBox(
                    height: 45,
                    width: 45,
                    child: Image.asset(
                      dosen.imgProfile!,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              dosen.nmDosen ?? 'Memuat...',
              style: Get.textTheme.subtitle2!.copyWith(
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ),
    );
  }
}
