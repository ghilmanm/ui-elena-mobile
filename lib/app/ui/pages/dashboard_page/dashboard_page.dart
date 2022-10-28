import 'package:elena/app/ui/pages/history_page/history_page.dart';
import 'package:elena/app/ui/pages/home_page/home_page.dart';
import 'package:elena/app/ui/pages/kontak_dosen_page/kontak_dosen_page.dart';
import 'package:elena/app/ui/pages/matakuliah_page/matakuliah_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/dashboard_controller.dart';

class DashboardPage extends GetView<DashboardController> {
  const DashboardPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(
        () => IndexedStack(
          index: controller.selectedIndex.value,
          children: const [
            HomePage(),
            MatakuliahPage(),
            KontakDosenPage(),
            HistoryPage(),
          ],
        ),
      ),
      bottomNavigationBar: Obx(() => Container(
            height: 83,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(30),
                topLeft: Radius.circular(30),
              ),
              boxShadow: [
                BoxShadow(color: Color(0xD000000), spreadRadius: 10, blurRadius: 10),
              ],
            ),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(30.0),
                topRight: Radius.circular(30.0),
              ),
              child: BottomNavigationBar(
                backgroundColor: Colors.white,
                unselectedItemColor: Colors.grey,
                selectedItemColor: const Color(0xFFEF7A39),
                type: BottomNavigationBarType.fixed,
                // showSelectedLabels: false,
                showUnselectedLabels: false,
                onTap: (index) => controller.changeIndex(index),
                currentIndex: controller.selectedIndex.value,
                items: [
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/home.png',
                      color: controller.selectedIndex.value == 0
                          ? const Color(0xFFEF7A39)
                          : null,
                    ),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/matkul.png',
                      color: controller.selectedIndex.value == 1
                          ? const Color(0xFFEF7A39)
                          : null,
                    ),
                    label: "Matakuliah",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/kontak.png',
                      color: controller.selectedIndex.value == 2
                          ? const Color(0xFFF6671B)
                          : null,
                    ),
                    label: "Kontak Dosen",
                  ),
                  BottomNavigationBarItem(
                    icon: Image.asset(
                      'assets/icons/history.png',
                      color: controller.selectedIndex.value == 3
                          ? const Color(0xFFEF7A39)
                          : null,
                    ),
                    label: "History",
                  )
                ],
              ),
            ),
          )),
    );
  }
}
