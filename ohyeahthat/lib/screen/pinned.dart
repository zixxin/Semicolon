import 'package:flutter/material.dart';

class PinnedScreen extends StatelessWidget{
  const PinnedScreen({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Center(
          child: Text("중요 공지 화면이 구현될 페이지 입니다.")
        )
      )
    );
  }
}