import 'package:flutter/material.dart';

import '../utils/colors/app_colors.dart';


class NextTapWidget extends StatefulWidget {
  const NextTapWidget({Key? key, required this.title, required this.callback}) : super(key: key);
  final String title;
  final VoidCallback callback;

  @override
  State<NextTapWidget> createState() => _NextTapWidgetState();
}

class _NextTapWidgetState extends State<NextTapWidget> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        widget.callback.call();
      },
      child: Container(
          width: 150,
          height: 50,
          decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.white
      ),child: Center(child: Text(widget.title,style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),))),
    );
  }
}
