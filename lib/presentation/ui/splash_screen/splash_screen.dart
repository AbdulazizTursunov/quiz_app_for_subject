import 'package:flutter/material.dart';
import 'package:quiz_app_for_client/presentation/ui/play_screen/play_screen.dart';
import 'package:quiz_app_for_client/utils/app_image/app_image.dart';

import '../../../utils/constant/constant.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  _init() async {
    await Future.delayed(const Duration(seconds: 3));

    if (context.mounted) {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const  PlayScreen(),));
    }
  }

  @override
  void initState() {
    _init();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    width = MediaQuery.of(context).size.width;
    height = MediaQuery.of(context).size.height;
    return Scaffold(body: SafeArea(
      child: SizedBox(
          height: double.infinity,
          width: double.infinity,
          child: Image.asset(AppImage.logo)),
    ),);
  }
}
