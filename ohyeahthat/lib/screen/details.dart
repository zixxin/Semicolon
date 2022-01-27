// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ohyeahthat/theme/colors.dart';
import 'dart:typed_data';
import 'package:screenshot/screenshot.dart';

//import 'package:permission_handler/permission_handler.dart';
//import 'package:image_gallery_saver/image_gallery_saver.dart';
//import 'package:path_provider/path_provider.dart';
//import 'package:flutter/services.dart' show rootBundle;
//import 'package:share/share.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({
    Key? key,
  }) : super(key: key);
  @override
  _DetailsScreen createState() => _DetailsScreen();
}

class _DetailsScreen extends State<DetailsScreen> {
  final screenshotController = ScreenshotController();
  var item = Get.arguments;

  @override
  Widget build(BuildContext context) => Screenshot(
        controller: screenshotController,
        child: Scaffold(
            appBar: AppBar(
              elevation: 0.0,
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
              actions: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 12.0),
                  child: IconButton(
                    icon: const Icon(Icons.share),
                    tooltip: ('share'),
                    onPressed: () {
                      screenshotController
                          .capture(delay: const Duration(milliseconds: 10))
                          .then((capturedImage) async {
                        showCapturedWidget(context, capturedImage!);
                      }).catchError((onError) {
                        print(onError);
                      });
                    },
                  ),
                ),
              ],
              backgroundColor: primary,
            ),
            body: SafeArea(
                child: Center(
                    child: ListView(children: [
              Row(children: [
                const Padding(padding: EdgeInsets.only(left: 20)),
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                  const SizedBox(height: 7),
                  Container(
                    padding: const EdgeInsets.only(top: 10.0, bottom: 20.0),
                    child: Text(
                      _title(item),
                      style: const TextStyle(
                        fontFamily: 'main',
                        fontSize: 18,
                        color: Color(0xFF2E2E2E),
                      ),
                    ),
                  ),
                ])
              ]),
              Row(children: [_detailsLine(item)]),
              const Divider(thickness: 1),
              Container(
                padding: const EdgeInsets.all(20),
                child: Text(_content(item),
                    style: const TextStyle(
                      fontFamily: 'main',
                      fontSize: 15,
                    )),
              ),
            ])))),
      );
  /*
 Future saveAndShare(Uint8List bytes) async {
    final directory = await getApplicationDocumentsDirectory();
      final image = File('${directory.path}/flutter.png');
      image.writeAsBytesSync(bytes);

    await Share.shareFiles([image.path]);
  }

  Future<String> saveImage(Uint8List bytes) async {
    await [Permission.storage].request();

    final time = DateTime.now()
        .toIso8601String()
        .replaceAll('.', '-')
        .replaceAll(';', '-');

    final name = 'screenshot_$time';
    final result = await ImageGallerySaver.saveImage(bytes, name: name);

    return result['filePath'];
  } */
  Future<dynamic> showCapturedWidget(
      BuildContext context, Uint8List capturedImage) {
    return showDialog(
      useSafeArea: false,
      context: context,
      builder: (context) => Scaffold(
        appBar: AppBar(
          title: const Text("스크린 샷 화면",
            style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 20,
                    )
                  ),
          backgroundColor: primary,
        ),
        body: Center(
            // ignore: unnecessary_null_comparison
            child: capturedImage != null
                ? Image.memory(capturedImage)
                : Container()),
      ),
    );
  }

  String _title(var item) {
    if (item == null) {
      return "";
    } else {
      return item.title;
    }
  }

  String _content(var item) {
    if (item == null) {
      return "";
    } else {
      return item.content;
    }
  }
}

Widget _detailsLine(var item) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start, // 위젯 사이 공간 동일하게 만들기
    children: <Widget>[
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            margin:
                const EdgeInsets.only(left: 18.0, right: 10.0, bottom: 10.0),
            width: 65,
            height: 27,
            decoration: BoxDecoration(
                color: const Color(0xFF8BBA65),
                borderRadius: BorderRadius.circular(20) //모서리를 둥글게
                ),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(item.board,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'main', color: Colors.white, fontSize: 14.0)),
            ),
          ),
        ],
      ),
      Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        // Row에서는 mainAxis가 가로, crossAxis가 세로
        // Column에서는 crossAxis가 가로, mainAxis가 세로
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0, bottom: 10.0),
            width: 72,
            height: 27,
            decoration: BoxDecoration(
                color: const Color(0xFFF4717F),
                borderRadius: BorderRadius.circular(20) //모서리를 둥글게
                ),
            child: Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(item.keyword,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                      fontFamily: 'main', color: Colors.white, fontSize: 14.0)),
            ),
          ),
        ],
      ),
    ],
  );
}
