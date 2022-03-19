import 'package:flutter/material.dart';

//タイトル部分のtextStyle
class title_design extends StatelessWidget {

  const title_design({required this.text});
  final  String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(60, 20, 60, 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.blueAccent),
      ),
      child: Text(
        text,
        style: const TextStyle(fontSize: 40),
      ),
    );
  }
}