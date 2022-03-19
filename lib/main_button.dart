import 'package:flutter/material.dart';
import 'login_page.dart';

class main_button extends StatelessWidget {
  //required this.onPressed を事後入力
  // ignore: use_key_in_widget_constructors
  const main_button({required this.text});

  final String text;

  // final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(20),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          minimumSize: Size(280, 70),
          textStyle: TextStyle(fontSize: 28),
          primary: Color(0xFF199797), //background
          onPrimary: Colors.black,
        ),
        child: Text(text),
        onPressed: (){
          Navigator.of(context).push(MaterialPageRoute(builder:(BuildContext context){
            return login_page();
          }));
        },
      ),
    );
  }
}