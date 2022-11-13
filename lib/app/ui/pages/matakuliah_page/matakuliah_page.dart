import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/matakuliah_controller.dart';
import '../../utils/constants/colors.dart';

class MatakuliahPage extends GetView<MatakuliahController> {
  const MatakuliahPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        title: Text(
          'Matakuliah',
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
                        'Cari mata kuliahmu disini',
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Baru Ditambahkan',
                style: Get.textTheme.subtitle2!.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: controller.listMatkul.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.only(bottom: 22),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: BASED_COLOR_GREY,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: const [
                      BoxShadow(
                        offset: Offset(4, 4),
                        blurRadius: 4,
                        color: Color(0x0d000000),
                      ),
                    ],
                  ),
                  child: Stack(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 110,
                            width: 65,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: COLOR_LIGHT[index % COLOR_LIGHT.length],
                            ),
                            child: Image.asset(
                              'assets/image/img_matkul.png',
                              scale: 1.2,
                            ),
                          ),
                          const SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const SizedBox(height: 5),
                              Text(
                                controller.listMatkul[index].nmMatkul ??
                                    'Memuat..',
                                style: Get.textTheme.subtitle2!.copyWith(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              const SizedBox(height: 5),
                              Text(
                                'Semester ${controller.listMatkul[index].semester ?? '-'}',
                                style: Get.textTheme.subtitle2!.copyWith(
                                  color: TEXT_COLOR_GREY,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              if (controller.listMatkul[index].dosen !=
                                  null) ...[
                                const SizedBox(height: 5),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: List.generate(
                                    controller.listMatkul[index].dosen!.length,
                                    (i) => Text(
                                      controller.listMatkul[index].dosen![i]
                                              .nmDosen ??
                                          'No name',
                                      style: Get.textTheme.subtitle2!.copyWith(
                                        color: TEXT_COLOR_GREY,
                                        fontSize: 14,
                                        fontStyle: FontStyle.italic,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ],
                          ),
                        ],
                      ),
                      if (controller.listMatkul[index].dosen != null) ...[
                        Positioned(
                          right: 0,
                          bottom: 0,
                          child: LimitedBox(
                            maxHeight: 30,
                            maxWidth: 70,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount:
                                  controller.listMatkul[index].dosen!.length > 3
                                      ? 4
                                      : controller
                                          .listMatkul[index].dosen!.length,
                              reverse: true,
                              shrinkWrap: true,
                              itemBuilder: (context, i) {
                                if (i == 3) {
                                  return Align(
                                    widthFactor: 0.6,
                                    child: ClipOval(
                                      child: Container(
                                        color: Colors.white,
                                        child: const SizedBox(
                                          height: 28,
                                          width: 28,
                                          child: Icon(
                                            Icons.add,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                return Align(
                                  widthFactor: 0.6,
                                  child: ClipOval(
                                    child: Container(
                                      color: Colors.white,
                                      child: SizedBox(
                                        height: 28,
                                        width: 28,
                                        child: Image.asset(
                                          controller.listMatkul[index].dosen![i]
                                              .imgProfile!,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        )
                      ]
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
