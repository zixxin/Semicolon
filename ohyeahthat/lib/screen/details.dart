import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ohyeahthat/theme/colors.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
  }) : super(key: key);

  @override
  _DetailsScreen createState() => _DetailsScreen();
}

class _DetailsScreen extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(' 공지 상세 정보',
              style: TextStyle(
                fontFamily: 'main',
                fontSize: 20,
              )),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Get.offNamed('/home');
            },
          ),
          backgroundColor: primary,
        ),
        body: SafeArea(
            child: Center(
                child: ListView(children: [
          Row(children: [
            Column(children: [
              const SizedBox(height: 7),
              const Text(
                'Title',
                textAlign: TextAlign.start,
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 25,
                  color: Color(0xFF2E2E2E),
                ),
              ),
              Row(children: const [
                Text(
                  'Writer',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 12,
                    color: Color(0xFFA9A9A9),
                  ),
                ),
                Text(
                  ' | ',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 12,
                    color: Color(0xFFA9A9A9),
                  ),
                ),
                Text(
                  'Date',
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    fontFamily: 'main',
                    fontSize: 12,
                    color: Color(0xFFA9A9A9),
                  ),
                )
              ]),
            ])
          ]),
          const SizedBox(height: 20),
          const Divider(thickness: 1),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Chip(
                    label: Text("#keyword",
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 13,
                          color: Color(0xFFA9A9A9),
                        ))),
                Chip(
                    label: Text("#keyword",
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 13,
                          color: Color(0xFFA9A9A9),
                        ))),
                Chip(
                    label: Text("#keyword",
                        style: TextStyle(
                          fontFamily: 'main',
                          fontSize: 13,
                          color: Color(0xFFA9A9A9),
                        ))),
                Icon(Icons.share),
              ]),
          const Divider(thickness: 1),
          const ListTile(
            title: Text("All the noti stuff",
                style: TextStyle(
                  fontFamily: 'main',
                  fontSize: 13,
                )),
          )
        ]))));
  }
}
