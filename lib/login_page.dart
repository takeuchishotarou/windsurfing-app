import 'package:flutter/material.dart';
import 'package:windsurfing/title_design.dart';
import 'constants.dart';

class login_page extends StatelessWidget {
  const login_page({Key? key}) : super(key: key);

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
            children: [
              const SizedBox(height: 90),
              const title_design(
                text: 'ログイン画面',
              ),
              const SizedBox(height: 70),
              const Text(
                'ID',
                style: kTextSizeSub,
              ),
              Container(
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email or Phone number",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
              const Text(
                'PASSWORD',
                style: kTextSizeSub,
              ),
              Container(
                // padding: EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    border: Border(bottom: BorderSide(color: Colors.grey))),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Email or Phone number",
                    hintStyle: TextStyle(color: Colors.white),
                    border: InputBorder.none,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
