import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ohyeahthat/data/data.dart';
import 'package:ohyeahthat/theme/colors.dart';

class KeyWord extends StatefulWidget {
  const KeyWord({Key? key}) : super(key: key);

  @override
  State<KeyWord> createState() => _KeyWordState();
}

class _KeyWordState extends State<KeyWord> {
  List<String> inputs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('키워드관리',
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
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: EdgeInsets.all(3.0),
            child: Column(
              children: [
                Header(),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      border: Border.all(
                        color: Colors.blueGrey,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(3.0),
                    padding: EdgeInsets.all(25.0),
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 10,
                        children: concerns.asMap().entries.map((entry) {
                          int idx = entry.key;
                          return BuildChip(
                            index: idx,
                            label: entry.value['label'].toString(),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                MyKeyword(),
                if (inputs.length > 0)
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.all(3.0),
                      padding: EdgeInsets.all(25.0),
                      decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        border: Border.all(
                          color: Colors.lightBlue,
                        ),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 10,
                          children: inputs.asMap().entries.map((entry) {
                            int idx = entry.key;
                            return BuildSelectedChip(
                              index: idx,
                              label: entry.value,
                            );
                          }).toList(),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ));
  }

  Widget BuildChip({required int index, required String label}) {
    return InputChip(
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      avatar: CircleAvatar(
          child: Text(label[0].toUpperCase()), backgroundColor: Colors.white),
      backgroundColor: Colors.blueGrey,
      selected: inputs.contains(label),
      onSelected: (bool selected) {
        setState(() {
          if (selected) {
            inputs.add(label);
          } else {
            inputs.removeWhere((value) {
              return value == label;
            });
          }
        });
      },
    );
  }

  Widget BuildSelectedChip({
    required int index,
    required String label,
  }) {
    return Chip(
      label: Text(
        label,
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      avatar: CircleAvatar(
          child: Text(label[0].toUpperCase()), backgroundColor: Colors.white),
      backgroundColor: Colors.lightBlue,
      onDeleted: () {
        setState(() {
          inputs.removeWhere((value) {
            return value == label;
          });
        });
      },
    );
  }

  Widget MyKeyword() {
    return Container(
      margin: EdgeInsets.all(5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Text("내 키워드",
            style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold)),
        ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {
              return 
              setState(() {
                inputs.clear();
              });
            },
            child: Text("비우기"),
            color: Colors.white,
          ),
        ),
      ]),
    );
  }

  Widget Header() {
    return Container(
        child: Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '키워드 검색'),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {},
              icon: Icon(Icons.search),
            ),
          )
        ],
      ),
    ));
  }
}
