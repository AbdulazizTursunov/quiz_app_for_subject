import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quiz_app_for_client/presentation/ui/questions_screens/questions_screens.dart';
import 'package:quiz_app_for_client/widget/global_play_widget.dart';

import '../../../utils/app_svg/app_svg.dart';
import '../../../utils/colors/app_colors.dart';
import '../../../widget/custom_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          CustomScreen(),
          Positioned(
              child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: AppColors.black,
              size: 30,
            ),
          )),
          const Positioned(
              top: 259,
              right: 60,
              child: Text(
                "Quiz about?",
                style: TextStyle(
                    fontFamily: "Inter",
                    fontSize: 48,
                    fontWeight: FontWeight.w700,
                    color: AppColors.select),
                textAlign: TextAlign.center,
              )),
          Positioned(
              left: 38,
              bottom: 270,
              child: SvgPicture.asset(
                AppIcons.circleTwo,
                width: 72,
                height: 72,
              )),
          Positioned(
              top: 350,
              right: 100,
              child: GlobalPlayWidget(
                title: "programming",
                voidCallback: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const QuestionsScreen(),));
                },
              )),
          Positioned(
              bottom: 320,
              right: 140,
              child: GlobalPlayWidget(
                title: "english",
                voidCallback: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const QuestionsScreen(),));
                },
              )),
          Positioned(
              bottom: 200,
              right: 155,
              child: GlobalPlayWidget(
                title: "math",
                voidCallback: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>const QuestionsScreen(),));
                },
              )),
        ]),
      ),
    );
  }
}
