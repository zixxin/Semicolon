import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/data.dart';
import 'package:ohyeahthat/data/model.dart';
import 'package:ohyeahthat/widget/slidable_pinned.dart';
import 'package:ohyeahthat/widget/utils.dart';

class PinnedScreen extends StatefulWidget {
  const PinnedScreen({Key? key}) : super(key: key);

  @override
  State<PinnedScreen> createState() => _PinnedScreenState();
}

class _PinnedScreenState extends State<PinnedScreen> {
  List<Content> item = List.of(Data.contents);

  List<Content> Make_ImpList() {
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
    List<Content> imp_list = Make_ImpList();

    // 출력test
    // for(int i=0; i<imp_list.length; i++){
    //   print(imp_list[i]);
    // }
    return Scaffold(
        appBar: AppBar(
          title: const Text("중요공지"),
        ),
        body: SafeArea(
            child: Center(
          child: ListView.separated(
              itemCount: imp_list.length,
              separatorBuilder: (context, index) {
                return const Divider(
                  thickness: 5,
                );
              },
              itemBuilder: (context, index) {
                final items = imp_list[index];
                return Slidable_Imp_Widget(
                  child: buildListTile(items),
                  onDismissed: (action) =>
                      dismissSlidableItem(context, index, action),
                  selected_item: items,
                );
              }),
        )));
  }

  void dismissSlidableItem(BuildContext context, int index, action) {
    List<Content> imp_list = Make_ImpList(); //비효율적인 같은 리스트 생성.
    setState(() {
      imp_list.removeAt(index);
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
        vertical: 16,
      ),
      title: Row(
        children: [
          Chip(
            label: Text(item.keyword),
            backgroundColor: Colors.blue,
          )
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            item.keyword,
            style: const TextStyle(fontWeight: FontWeight.w900),
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (item.title.length > 30)
                for (int i = 0; i < 30; i++) Text(item.title[i]),
              if (item.title.length < 30) Text(item.title),
            ],
          ),
          const SizedBox(height: 4),
          Text(item.writer),
        ],
      ),
      onTap: () {},
    );
  }
}
