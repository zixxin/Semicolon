import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/data.dart';
import 'package:ohyeahthat/data/model.dart';
import 'package:ohyeahthat/screen/notification.dart';
import 'package:ohyeahthat/widget/slidable_widget.dart';
import 'package:ohyeahthat/widget/utils.dart';
import 'package:ohyeahthat/screen/pinned.dart';
import 'package:get/get.dart';
import 'package:awesome_notifications/awesome_notifications.dart';

class AllNotiScreen extends StatefulWidget {
  const AllNotiScreen({
    Key? key,
  }) : super(key: key);

  @override
  _AllNotiScreen createState() => _AllNotiScreen();
}

class _AllNotiScreen extends State<AllNotiScreen> {
  List<Content> item = List.of(Data.contents);

  @override
  void initState() {
    super.initState();
    AwesomeNotifications().isNotificationAllowed().then((isAllowed) {
      if (!isAllowed) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Allow Notifications'),
            content: const Text('Our app would like to send you notifications'),
            actions: [
              TextButton(
                onPressed: () {
                  Get.offNamed('/details', arguments: item);
                },
                child: const Text(
                  'No thanks',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                  onPressed: () => AwesomeNotifications()
                      .requestPermissionToSendNotifications()
                      .then((_) => Navigator.pop(context)),
                  child: const Text(
                    'Allow',
                    style: TextStyle(
                      color: Colors.teal,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ))
            ],
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size displaysize = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF88A4B8),
        elevation: 0.0,
        bottom: PreferredSize(
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            // Row에서는 mainAxis가 가로, crossAxis가 세로
            // Column에서는 crossAxis가 가로, mainAxis가 세로
            children: [
              Container(height: 10),
              SizedBox(
                width: displaysize.width * 0.9,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF88A4B8)),
                        borderRadius: BorderRadius.circular(15)),
                    enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Color(0xFF88A4B8)),
                        borderRadius: BorderRadius.circular(15)),
                    fillColor: Colors.grey[200],
                    filled: true,
                    // border: InputBorder.none,
                    // focusedBorder: InputBorder.none,
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[600],
                      size: displaysize.width * 0.06,
                    ), // 검색 아이콘 추가
                    contentPadding: const EdgeInsets.only(left: 5, right: 5),
                    hintText: '검색어 입력',
                    hintStyle: TextStyle(
                      fontSize: 17.0,
                      fontFamily: 'main',
                      color: Colors.black.withOpacity(0.5),
                    ),
                  ),
                ),
              ),
              Container(height: 13)
            ],
          ),
          preferredSize: Size(displaysize.width * 0.9, 50),
        ),
        title: const Text('전체 공지',
            style: TextStyle(fontSize: 20, fontFamily: 'main')),
        actions: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                  icon: const Icon(Icons.push_pin),
                  onPressed: () {
                    Get.to(const PinnedScreen());
                  }),
              const Padding(
                  padding: EdgeInsets.only(right: 12.0),
                  child: IconButton(
                      icon: Icon(Icons.alarm),
                      onPressed: createPlantFoodNotification)),
              // const IconButton(
              //   icon: Icon(Icons.alarm),
              //   onPressed: createPlantFoodNotification,
              // )
            ],
          ),
        ],
      ),
      //   title: Expanded(
      //     child: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[_logonicon()],
      //   ),
      // )),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  // child: searchBar(),
                ),
                // const Divider(
                //   thickness: 1,
                // ),
                ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: item.length,
                    separatorBuilder: (context, index) {
                      return const Divider(
                        thickness: 1,
                      );
                    },
                    itemBuilder: (context, index) {
                      final items = item[index];
                      return SlidableWidget(
                        child: buildListTile(items),
                        onDismissed: (action) =>
                            dismissSlidableItem(context, index, action),
                        selected_item: items,
                      );
                    }),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void dismissSlidableItem(BuildContext context, int index, action) {
    switch (action) {
      case SlidableAction.archive:
        Utils.showSnackBar(context, '중요공지에 저장되었습니다.');
        break;
      case SlidableAction.delete:
        setState(() {
          item.removeAt(index);
        });
        Utils.showSnackBar(context, '삭제되었습니다.');
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
}

// Widget searchBar() {
//   return Column(
//     children: [
//       Padding(
//         padding: const EdgeInsets.only(top: 7.0),
//         child: TextFormField(
//             // textAlign: TextAlign.center,
//             decoration: InputDecoration(
//           isDense: true,
//           fillColor: Colors.grey.withOpacity(0.3),
//           hintText: '검색어 입력',
//           hintStyle: TextStyle(
//             fontFamily: 'main',
//             color: Colors.black.withOpacity(0.5),
//           ),
//           contentPadding: const EdgeInsets.only(top: 13.0, left: 18.0),
//           suffixIcon: const Icon(Icons.search, size: 25.0),
//           filled: true,
//           enabledBorder: UnderlineInputBorder(
//               borderSide: const BorderSide(color: Colors.transparent),
//               borderRadius: BorderRadius.circular(20)),
//           focusedBorder: UnderlineInputBorder(
//               borderSide: const BorderSide(color: Colors.transparent),
//               borderRadius: BorderRadius.circular(20)),
//         )),
//       ),
//     ],
//   );
// }
