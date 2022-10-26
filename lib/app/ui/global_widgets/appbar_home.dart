import 'package:elena/app/controllers/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppbarHome extends GetView<HomeController> {
  final VoidCallback? onTapProfile;
  final VoidCallback? onTapNotif;
  const AppbarHome({Key? key, this.onTapProfile, this.onTapNotif})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      automaticallyImplyLeading: false,
      flexibleSpace: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment:
                MainAxisAlignment.start, //change here don't //worked
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: [
              InkWell(
                onTap: onTapProfile ?? () {},
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/image/user_photo.png'),
              ),
              const SizedBox(width: 11),
              Text(
                'Hai,\n${controller.user.value}',
                style: Get.textTheme.subtitle2!.copyWith(
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                    fontSize: 16),
              ),
              const Spacer(),
              InkWell(
                onTap: onTapNotif ?? () {},
                customBorder: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13),
                ),
                child: Ink(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(13),
                      boxShadow: const [
                        BoxShadow(
                          offset: Offset(0, 2),
                          blurRadius: 4,
                          color: Color(0x17000000),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Image.asset('assets/icons/bel.png'),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
