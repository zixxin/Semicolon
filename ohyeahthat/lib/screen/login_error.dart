import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:ohyeahthat/theme/colors.dart';

class LoginErrorScreen extends StatelessWidget{
  const LoginErrorScreen({Key? key}) : super(key: key);

  @override 

  Widget build(BuildContext context) {
    return Scaffold (
      backgroundColor: primary,
      body: Center (
        child: Column(
          children: [
            const Spacer(),
            const SizedBox(
              height: 300,
              width: 250,
              child: Image(
                image: AssetImage('assets/sad.png')
              )
            ),
            const Text(
              "로그인 에러!",
              style: TextStyle(
                color: Color(0xFFE3360F),
                fontFamily: 'main',
                fontSize: 50,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "한동대학교 이메일이 아닙니다..\n다시 시도해주세요!",
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'main',
                fontSize: 30,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () => _signOut(),
                child: const Text(
                  "로그인 화면으로 돌아가기",
                  style: TextStyle(
                  color: Colors.black,
                  fontFamily: 'main',
                  fontSize: 20,
                ), 
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white
              )
            ),
            const Spacer(),
          ],
        )
      )
    );
  }
  Future<void> _signOut() async {
    GoogleSignIn _signIn = GoogleSignIn(); 
    FirebaseAuth auth = FirebaseAuth.instance;
    await _signIn.disconnect();
    await auth.currentUser?.delete();
    await auth.signOut(); 
  } 
}