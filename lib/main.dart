import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:windsurfing/login_page.dart';
import 'constants.dart';
import 'title_design.dart';
import 'main_button.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'WindSurfing',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.redAccent,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(begin: Alignment.topCenter, colors: [
          Color(0xff001AFF),
          Color(0xff2A3FFF),
          Color(0xff0066FF),
        ])),
        child: Center(
          child: Column(
            children: const [
              SizedBox(height: 90),
              title_design(
                text: 'ログイン画面',
              ),
              SizedBox(height: 70),
              Text(
                '大会情報',
                style: kTextSizeTitle,
              ),
              SizedBox(height: 50),
              main_button(text: '過去の大会'),
              main_button(text: '登録済の大会'),
              main_button(text: '大会に参加する'),
            ],
          ),
        ),
      ),
    );
  }
}
