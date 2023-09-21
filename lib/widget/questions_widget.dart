import 'package:flutter/material.dart';
import 'package:quiz_app_for_client/widget/select_answer_widget.dart';
import '../utils/colors/app_colors.dart';

class QuestionsWidget extends StatelessWidget {
  const QuestionsWidget({Key? key,
    required this.question,
    required this.indexAction,
    required this.totalQuestion, required this.select})
      : super(key: key);
  final String question;
  final int indexAction;
  final int totalQuestion;
  final Map<String,bool> select;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
          children: [
      // const   CustomScreen(),
      Text("Questions: ${indexAction + 1}/$totalQuestion",style:const  TextStyle(color: AppColors.white,fontSize: 20),),
     const  SizedBox(height: 30),
      Container(
        padding:const EdgeInsets.all(10),
        width: 327,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppColors.white,
            border: Border.all(color: AppColors.black, width: 1.0)),
        child: Text(question, style:const  TextStyle(color: AppColors.cff000302,
            fontSize: 20,
            fontFamily: "Inter",
            fontWeight: FontWeight.w800)),),
           const  SizedBox(height: 20),
            SelectAnswerWidget(answer:select , callback: () {},),

        ]
      ),
    );
  }
}
