import 'package:flutter/material.dart';

class AllNotiScreen extends StatelessWidget{
  const AllNotiScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("전체 공지 화면이 구현될 페이지 입니다.")
        )
      )
    );
  }
}