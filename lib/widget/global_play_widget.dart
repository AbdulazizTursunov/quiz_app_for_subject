import 'package:flutter/material.dart';

class GlobalPlayWidget extends StatefulWidget {
  const GlobalPlayWidget({Key? key, required this.title, required this.voidCallback}) : super(key: key);
  final String title;
  final VoidCallback voidCallback;

  @override
  State<GlobalPlayWidget> createState() => _GlobalPlayWidgetState();
}

class _GlobalPlayWidgetState extends State<GlobalPlayWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      widget.voidCallback.call();
    }, child: Text(widget.title,style: TextStyle(fontSize: 24,fontWeight: FontWeight.w600,fontFamily: "Inter"),));
  }
}
