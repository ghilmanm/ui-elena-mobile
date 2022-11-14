import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controllers/kontak_dosen_controller.dart';
import 'list_dosen.dart';

class KontakDosenPage extends GetView<KontakDosenController> {
  const KontakDosenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Kontak Dosen',
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
            // Serach
            InkWell(
              customBorder: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              onTap: () {},
              child: Ink(
                height: 52,
                decoration: BoxDecoration(
                  color: const Color(0xFFF9F9F9),
                  borderRadius: BorderRadius.circular(15),
                  border: Border.all(color: Colors.black, width: 2.0),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Row(
                    children: [
                      Image.asset('assets/icons/lensa_search.png'),
                      const SizedBox(width: 16),
                      Text(
                        'Cari informasi kontak dosen disini',
                        style: Get.textTheme.subtitle2!.copyWith(
                            color: const Color(0xFFB8B6B6),
                            fontSize: 14,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ),
            ),
            if (controller.listDosenTi.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Teknik Informatika',
                  style: Get.textTheme.subtitle2!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListDosen(listDosen: controller.listDosenTi),
            ],
            if (controller.listDosenSi.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Sistem Informasi',
                  style: Get.textTheme.subtitle2!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListDosen(listDosen: controller.listDosenSi),
            ],
            if (controller.listDosenBd.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20.0),
                child: Text(
                  'Bisnis Digital',
                  style: Get.textTheme.subtitle2!.copyWith(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              ListDosen(listDosen: controller.listDosenBd),
            ]
          ],
        ),
      ),
    );
  }
}
