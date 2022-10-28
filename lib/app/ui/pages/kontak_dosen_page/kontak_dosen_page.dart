import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../layouts/main/main_layout.dart';

import '../../../controllers/kontak_dosen_controller.dart';

class KontakDosenPage extends GetView<KontakDosenController> {
  const KontakDosenPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout(
        child: Text('KontakDosen'),
      ),
    );
  }
}
