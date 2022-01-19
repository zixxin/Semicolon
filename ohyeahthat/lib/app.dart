import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:ohyeahthat/screen/home.dart';
import 'package:ohyeahthat/screen/login.dart';
import 'package:google_sign_in/google_sign_in.dart';


class App extends StatelessWidget{
  const App({Key? key}) : super(key: key);

  @override

  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return const Center (child: Text("Firebase load fail"),
          );
        }
        if (snapshot.connectionState == ConnectionState.done) {
          return const HomeScreen();    
        }
        return const CircularProgressIndicator();
      }
    );
  }
}