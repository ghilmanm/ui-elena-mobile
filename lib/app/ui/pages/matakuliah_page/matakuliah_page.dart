import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../layouts/main/main_layout.dart';

import '../../../controllers/matakuliah_controller.dart';

class MatakuliahPage extends GetView<MatakuliahController> {
  const MatakuliahPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout(
        child: Text('Matakuliah'),
      ),
    );
  }
}
