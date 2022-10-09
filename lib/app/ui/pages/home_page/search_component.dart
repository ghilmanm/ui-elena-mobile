import 'package:elena/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class SearchAndFilter extends GetView<HomeController> {
  const SearchAndFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Expanded(
          child: InkWell(
            customBorder: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            onTap: (){},
            child: Ink(
              height: 52,
              decoration: BoxDecoration(
                color: const Color(0xFFF9F9F9),
                borderRadius: BorderRadius.circular(15),
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
                          fontWeight: FontWeight.w600
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        const SizedBox(width: 23),
        InkWell(
          customBorder: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          onTap: () {},
          child: Ink(
            height: 50,
            width: 53,
            decoration: BoxDecoration(
              color: const Color(0xFF081238),
              borderRadius: BorderRadius.circular(15),
              boxShadow: const [
                BoxShadow(
                  offset: Offset(0, 2),
                  blurRadius: 4,
                  color: Color(0x40000000),
                ),
              ],
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: 12, vertical: 16),
              child: SvgPicture.asset('assets/icons/filter.svg'),
            ),
          ),
        ),
      ],
    );
  }
}
