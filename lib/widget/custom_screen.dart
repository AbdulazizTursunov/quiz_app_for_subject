import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_for_client/utils/app_svg/app_svg.dart';
import '../../../utils/colors/app_colors.dart';

class CustomScreen extends StatefulWidget {
  const CustomScreen({Key? key}) : super(key: key);

  @override
  State<CustomScreen> createState() => _CustomScreenState();
}

class _CustomScreenState extends State<CustomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c040415,
      body: SafeArea(
        child: Stack(children: [
          Positioned(left: 0, child: SvgPicture.asset(AppIcons.circleOne)),
          Positioned(
              right: 8, top: 136, child: SvgPicture.asset(AppIcons.circleTwo)),

          Positioned(bottom: 0, child: SvgPicture.asset(AppIcons.vector)),
        ]),
      ),
    );
  }
}
