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
                  padding: const EdgeInsets.only(right: 20.0),
                  child: IconButton(
                    icon: const Icon(Icons.share),
                    tooltip: 'share',
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
                )
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
                  Text(
                    _title(item),
                    style: const TextStyle(
                      fontFamily: 'main',
                      fontSize: 25,
                      color: Color(0xFF2E2E2E),
                    ),
                  ),
                  Row(children: [
                    Text(
                      _writer(item),
                      textAlign: TextAlign.start,
                      style: const TextStyle(
                        fontFamily: 'main',
                        fontSize: 12,
                        color: Color(0xFFA9A9A9),
                      ),
                    ),
                    const Text(
                      ' | ',
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontFamily: 'main',
                        fontSize: 12,
                        color: Color(0xFFA9A9A9),
                      ),
                    ),
                    const Text(
                      'date',
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
              Row(children: [
                const SizedBox(width: 20),
                Chip(
                    label: Text(_keyword(item),
                        style: const TextStyle(
                          fontFamily: 'main',
                          fontSize: 13,
                          color: Color(0xFFA9A9A9),
                        ))),
              ]),
              const Divider(thickness: 1),
              Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                    "Due to restrictions set up by Facebook this plugin isn't capable of sharing data reliably to Facebook related apps on Android and iOS. This includes eg. sharing text to the Facebook Messenger. If you require this functionality please check the native Facebook Sharing SDK (https://developers.facebook.com/docs/sharing) or search for other Flutter plugins implementing this SDK. More information can be found in this issue.",
                    style: TextStyle(
                      fontFamily: 'main',
                      fontSize: 13,
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
          title: const Text("스샷된 사진임"),
        ),
        body: Center(
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

  String _writer(var item) {
    if (item == null) {
      return "";
    } else {
      return item.writer;
    }
  }

  String _keyword(var item) {
    if (item == null) {
      return "";
    } else {
      return item.keyword;
    }
  }
}
