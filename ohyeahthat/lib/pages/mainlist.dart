import 'package:flutter/material.dart';
import 'package:ohyeahthat/data/data.dart';
import 'package:ohyeahthat/data/model.dart';
import 'package:ohyeahthat/widget/slidable_widget.dart';
import 'package:ohyeahthat/widget/utils.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {

  List<Content> item = List.of(Data.contents);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('이건 아빠'),
      ),
      body : ListView.separated(
        itemCount: item.length,
        separatorBuilder: (context, index){
          return Divider(
            thickness: 5,
          );
        },
        itemBuilder: (context,index) {
          final items = item[index];
          return SlidableWidget(
            child : buildListTile(items),
            onDismissed:(action) =>
              dismissSlidableItem(context,index,action),
          );
        }
      ),
    );
  }



  void dismissSlidableItem(BuildContext context, int index, action) {
  setState((){
    item.removeAt(index);
  });
  switch (action) {
      case SlidableAction.archive:
        Utils.showSnackBar(context, '중요공지에 저장되었습니다.');
        break;
      case SlidableAction.delete:
        Utils.showSnackBar(context, '삭제되었습니다.');
        break;
    }
}

Widget buildListTile(Content item) => ListTile(
        contentPadding: EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 16,
        ),
        // leading: CircleAvatar(
        //   radius: 28,
        //   backgroundImage: NetworkImage(item.urlAvatar),
        // ),
        title : Row(children: [
          Chip(
            label: Text(item.keyword),
            backgroundColor: Colors.blue,
          )
        ],),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              item.keyword,
              style: TextStyle(fontWeight: FontWeight.w900),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
              if(item.title.length > 30)
                for(int i=0; i < 30; i++)
                  Text(item.title[i]),
              if(item.title.length < 30)
                Text(item.title),
              ],
            ),
            const SizedBox(height: 4),
            Text(item.writer),
          ],
        ),
        onTap: () {},
      );
}

