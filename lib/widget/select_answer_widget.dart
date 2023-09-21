import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';

class SelectAnswerWidget extends StatefulWidget {
  const SelectAnswerWidget({Key? key, required this.answer,required this.callback}) : super(key: key);
  final Map<String,bool> answer;

  final VoidCallback callback;

  @override
  State<SelectAnswerWidget> createState() => _SelectAnswerWidgetState();
}

class _SelectAnswerWidgetState extends State<SelectAnswerWidget> {
  bool selected = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        setState(() {
          widget.callback.call();
          selected = !selected;
        });
      },
          child: Container(
            width: 370,
            padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color:selected? AppColors.select:AppColors.white,
          border: selected? null:Border.all(color: AppColors.white,width: 1.0)
        ),
        child: Text("${widget.answer}"),
      ),

    );
  }
}
