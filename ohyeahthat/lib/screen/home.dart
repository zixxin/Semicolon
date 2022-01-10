import 'package:flutter/material.dart';
//import 'package:get/get.dart';
import 'package:ohyeahthat/theme/colors.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "공지사항",
          style: TextStyle(
            fontFamily: 'main',
            fontSize: 22,
          ),
        ),
        backgroundColor: primary,
      ),
    );
  }
}