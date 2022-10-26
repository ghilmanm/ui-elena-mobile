import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appbar extends StatelessWidget {
  final String? title;
  const Appbar({Key? key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: const IconThemeData(
        color: Colors.black, //change your color here
      ),
      title: Text(
        title ?? 'Null',
        style: Get.textTheme.subtitle2!.copyWith(
            color: Colors.black, fontSize: 20, fontWeight: FontWeight.w700),
      ),
      backgroundColor: Colors.transparent,
      elevation: 0,
    );
  }
}
