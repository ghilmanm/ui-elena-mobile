import 'package:flutter/material.dart';

import '../../../data/models/matkul.dart';
import 'item_dosen.dart';

class ListDosen extends StatelessWidget {
  final List<Dosen> listDosen;
  const ListDosen({Key? key, required this.listDosen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: 22),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: listDosen.length,
      itemBuilder: (context, index) {
        return ItemDosen(
          dosen: listDosen[index],
        );
      },
    );
  }
}
