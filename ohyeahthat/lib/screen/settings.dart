import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget{
  const SettingScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("설정 화면이 구현될 페이지 입니다.")
        )
      )
    );
  }
}