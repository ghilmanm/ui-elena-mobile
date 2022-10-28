import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../layouts/main/main_layout.dart';

import '../../../controllers/history_controller.dart';

class HistoryPage extends GetView<HistoryController> {
      const HistoryPage ({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: MainLayout(
        child: Text('History'),
      ),
    );
  }
}
