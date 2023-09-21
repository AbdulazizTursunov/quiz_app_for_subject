import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quiz_app_for_client/utils/app_svg/app_svg.dart';
import 'package:quiz_app_for_client/widget/custom_screen.dart';
import '../../../data/questions_model/questions_model.dart';
import '../../../widget/questions_widget.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({Key? key}) : super(key: key);

  @override
  State<QuestionsScreen> createState() => _QuestionsScreenState();
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
      const    CustomScreen(),
          Positioned(
              top: 141,
              left: 150,
              child: SvgPicture.asset(
                AppIcons.backNumber,
                width: 100,
                height: 100,
              )),
          Positioned(
            left: 30,
            top: 200,
            child: QuestionsWidget(
              question: questions[index].title,
              indexAction: index,
              totalQuestion: questions.length,
              select: questions[index].options,
            ),
          ),
        ]),
      ),
    );
  }

  List<Questions> questions = [
    Questions(
        title:
            """3x + 5y = 20 tenglamani yeching. x va y qiymatlari nima bo'lishi mumkin?""",
        id: "1",
        options: {
          "x = 5 , y = 3": true,
          "x = 6 , y = 4": false,
          "x = 3 , y = 7": false,
        }),
    Questions(
        title: """12 ning 20% ni toping ?""",
        id: "2",
        options: {
          "2.8": false,
          "2.4": true,
          "4.4": false,
        }),
    Questions(
        title:
            """Kvadrat to'g'ri to'g'ri tomonlarini yuzasini toping, agar tomonlarinig  uzunligi 6 sm bo'lsa ?""",
        id: "3",
        options: {
          "36": true,
          "44": false,
          "28": false,
        }),
    Questions(
        title:
            """5 dona o'quvchi 3 ta kitob yozishni boshlagan. Har biri 4 kundan bir kitob yozsa, 2 kundan qancha kitob yozishad ?""",
        id: "4",
        options: {
          "4": false,
          "12": true,
          "2": false,
        }),
    Questions(
        title: """60 ning 25% ni toping ?""",
        id: "5",
        options: {
          "7.5": false,
          "25": false,
          "15": true,
        }),
    Questions(
        title:
            """7x - 4y = 14 va 2x + 3y = 7 tenglamalarni yeching. x va y ni toping ?""",
        id: "6",
        options: {
          "x = 4, y = 8": false,
          "x = 2, y = 3": true,
          "x = 3, y = 4": false,
        }),
  ];
}
