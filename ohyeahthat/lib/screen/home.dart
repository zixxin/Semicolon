import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ohyeahthat/theme/colors.dart';

class HomeScreen extends StatefulWidget{
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreen createState() => _HomeScreen();
}

class _HomeScreen extends State<HomeScreen> {
  bool isNotif = true;
  bool isLogin = true;
  int _selectedIndex = 0;

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
      drawer: Drawer (
        child: ListView (
          padding: EdgeInsets.zero,
          children: [
            SizedBox(
              height: 230.0,
              child: DrawerHeader(
                child: Column(
                  children :[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        IconButton(
                          icon: Icon(isNotif ? Icons.notifications_outlined : Icons.notifications_off_outlined),
                          onPressed: () {
                            setState(() {
                              isNotif = !isNotif;
                            });
                          },
                          iconSize: 35,
                          color: primary
                        ),
                        IconButton(
                          onPressed: () {Get.offNamed('/login');},
                          icon: const Icon(Icons.logout_outlined),
                          iconSize: 35,
                          color: primary
                        ),
                      ]
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children:[
                        const Image(
                          image: AssetImage('assets/hgulogo.png'),
                          width: 80.0,
                          height: 80.0
                        ),
                        const SizedBox(
                          width: 30,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "김한동",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'main',
                                fontSize: 30,
                                color: primary,
                              ),
                            ),
                            Text(
                              "222000000",
                              textAlign: TextAlign.start,
                              style: TextStyle(
                                fontFamily: 'main',
                                fontSize: 23,
                                color: idColor,
                              ),
                            )
                          ],
                        )
                      ]
                    )
                  ]
                )
              ),
            ),
            Container(
              padding: const EdgeInsets.all(18.0),
              child: Text(
                "KEYWORDS",
                style: TextStyle(
                  fontFamily: 'main',
                  color: primary,
                  fontSize: 32,
                  fontWeight: FontWeight.w600
                )
              )
            ),
          ],
        )
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: const Color(0xFFEFEFEF),
        selectedLabelStyle: const TextStyle(fontFamily: 'main', fontSize: 15),
        selectedItemColor: const Color(0xFF88A4B8),
        unselectedLabelStyle: const TextStyle(fontFamily: 'main', fontSize: 15),
        unselectedItemColor: const Color(0xFFAAA4A4),
        items: const <BottomNavigationBarItem> [
          BottomNavigationBarItem(
            icon: Icon(Icons.list_outlined),
            label: ('전체 공지')
          ),
          BottomNavigationBarItem (
            icon: Icon(Icons.star_outlined),
            label: ('중요 공지'),
          ),
        ]
      ),
    );
  }
}