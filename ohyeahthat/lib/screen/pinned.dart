import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/data.dart';
import 'package:ohyeahthat/data/model.dart';
import 'package:ohyeahthat/theme/colors.dart';
import 'package:ohyeahthat/widget/slidable_pinned.dart';
import 'package:ohyeahthat/widget/utils.dart';
import 'package:get/get.dart';

class PinnedScreen extends StatefulWidget {
  const PinnedScreen({Key? key}) : super(key: key);

  @override
  State<PinnedScreen> createState() => _PinnedScreenState();
}

class _PinnedScreenState extends State<PinnedScreen> {
  List<Content> item = List.of(Data.contents);

  List<Content> makeImpList() {
    List<Content> list = [];
    for (int i = 0; i < item.length; i++) {
      if (item[i].imp == true) {
        list.add(item[i]);
      }
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    List<Content> impList = makeImpList();

    // 출력test
    // for(int i=0; i<impList.length; i++){
    //   print(impList[i]);
    // }
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: primary,
          title: const Text("중요공지",
              style: TextStyle(
                fontFamily: 'main',
              )),
        ),
        body: SafeArea(
            child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: ListView.separated(
                itemCount: impList.length,
                separatorBuilder: (context, index) {
                  return const Divider(
                    thickness: 1,
                  );
                },
                itemBuilder: (context, index) {
                  final items = impList[index];
                  return SlidableImpWidget(
                    child: buildListTile(items),
                    onDismissed: (action) =>
                        dismissSlidableItem(context, index, action),
                    selected_item: items,
                  );
                }),
          ),
        )));
  }

  void dismissSlidableItem(BuildContext context, int index, action) {
    List<Content> impList = makeImpList(); //비효율적인 같은 리스트 생성.
    setState(() {
      impList.removeAt(index);
    });
    switch (action) {
      case SlidableAction.archive:
        Utils.showSnackBar(context, '중요공지에 저장되었습니다.');
        break;
      case SlidableAction.delete:
        Utils.showSnackBar(context, '중요목록 해제되었습니다.');
        break;
    }
  }

  Widget buildListTile(Content item) {
    return ListTile(
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 3,
      ),
      title: Row(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10.0, bottom: 12.0),
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
          Container(
            margin: const EdgeInsets.only(right: 10.0, bottom: 12.0),
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
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                item.title,
                style: const TextStyle(
                  fontFamily: 'main',
                  fontSize: 16,
                  color: Color(0xFF2E2E2E),
                ),
              ),
              // if (item.title.length > 30)
              //   for (int i = 0; i < 30; i++)
              //     Text(item.title[i],
              //         style:
              //             const TextStyle(fontFamily: 'main', fontSize: 16.0)),
              // if (item.title.length < 30)
              //   Text(item.title,
              //       style: const TextStyle(fontFamily: 'main', fontSize: 16.0)),
            ],
          ),
        ],
      ),
      onTap: () {
        Get.offNamed('/details', arguments: item);
      },
    );
  }

  // Widget buildListTile(Content item) {
  //   return ListTile(
  //     contentPadding: const EdgeInsets.symmetric(
  //       horizontal: 16,
  //       vertical: 16,
  //     ),
  //     title: Row(
  //       children: [
  //         Chip(
  //           label: Text(item.keyword),
  //           backgroundColor: Colors.blue,
  //         )
  //       ],
  //     ),
  //     subtitle: Column(
  //       crossAxisAlignment: CrossAxisAlignment.start,
  //       children: [
  //         Text(
  //           item.keyword,
  //           style: const TextStyle(fontWeight: FontWeight.w900),
  //         ),
  //         Row(
  //           mainAxisSize: MainAxisSize.min,
  //           children: [
  //             if (item.title.length > 30)
  //               for (int i = 0; i < 30; i++) Text(item.title[i]),
  //             if (item.title.length < 30) Text(item.title),
  //           ],
  //         ),
  //       ],
  //     ),
  //     onTap: () {},
  //   );
  // }
}
