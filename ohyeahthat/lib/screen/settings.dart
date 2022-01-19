import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ohyeahthat/theme/colors.dart';

class SettingScreen extends StatefulWidget{
  const SettingScreen({Key? key}) : super(key: key);

  @override
  _SettingScreen createState() => _SettingScreen();
} 
class _SettingScreen extends State<SettingScreen>{
  bool _alarmOn = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ListView(
            children: [
              const SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:[
                  const Image(
                    image: AssetImage('assets/hgulogo.png'),
                    width: 110.0,
                    height: 110.0
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '내 정보',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 15,
                          color: Color(0xFFA9A9A9)
                        )
                      ),
                      SizedBox(height: 7),
                      Text(
                        '김한동 학부생',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 25,
                          color: Color(0xFF2E2E2E),
                        ),
                      ),
                      Text(
                        '22000000@handong.ac.kr',
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 17,
                          color: Color(0xFF6E6E6E),
                        ),
                      )
                    ]  
                  )
                ]
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 1),
              Container (
                padding: const EdgeInsets.only(left: 13.0, top: 10.0),
                child: const Text(
                  "일반",
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 20,
                    color: Color(0xFFA9A9A9), 
                  )
                )
              ),
              const Divider(thickness: 1),
              ListTile(
                title: const Text(
                  "키워드 관리",
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 20,
                  )
                ),
                trailing: const Icon(Icons.arrow_forward_ios_rounded),
                onTap: () {Get.offNamed('/keyword');},
              ),
              const Divider(thickness: 1),
              ListTile(
                title: const Text(
                  '알림',
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 20,
                  )
                ),
                trailing: CupertinoSwitch(
                  value: _alarmOn,
                  onChanged: (bool value) {
                    setState(() {
                      _alarmOn = value;
                    });
                  }
                )
              ),
              const Divider(thickness: 1),
              Container (
                padding: const EdgeInsets.only(left: 13.0, top: 10.0),
                child: const Text(
                  "계정 정보",
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 20,
                    color: Color(0xFFA9A9A9), 
                  )
                ),
              ),
              const Divider(thickness: 1),
              ListTile(
                title: const Text(
                  "로그아웃",
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 20,
                    color: Color(0xFFD72626)
                  )
                ),
                onTap: () {Get.offNamed('/login');},
              ),
              const Divider(thickness: 1),
            ]
          )
        )
      )
    );
  }
}