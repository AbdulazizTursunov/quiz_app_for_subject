import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_for_client/presentation/ui/home_screen/home_screen.dart';
import 'package:quiz_app_for_client/utils/app_image/app_image.dart';
import 'package:quiz_app_for_client/utils/app_svg/app_svg.dart';
import 'package:quiz_app_for_client/widget/custom_screen.dart';
import 'package:quiz_app_for_client/widget/global_play_widget.dart';

import '../../../utils/colors/app_colors.dart';
import '../../../utils/constant/constant.dart';

class PlayScreen extends StatefulWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  State<PlayScreen> createState() => _PlayScreenState();
}

class _PlayScreenState extends State<PlayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c040415,
      body: SafeArea(
        child: Stack(children: [
        const  CustomScreen(),
            Positioned(left: 80,top: 150,
                child: Text(
            "Quiz time",
            style:  TextStyle(
              fontFamily: "Inter",
              fontSize: 48,
              fontWeight: FontWeight.w700,
              color: AppColors.select
            ),
          )),
          Positioned(
top: 250,
              child: Image.asset(AppImage.image,height: 250,)),
          Positioned(
              bottom: 122,
              left: 130,
              child: GlobalPlayWidget(
                title: 'Play',
                voidCallback: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomeScreen(),
                      ));
                },
              )),
        ]),
      ),
    );
  }
}
