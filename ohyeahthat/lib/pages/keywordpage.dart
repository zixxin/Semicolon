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
                Padding(
                  padding: const EdgeInsets.only(left : 5.0),
                  child: Row(
                    children: [
                      Text('Keywords',
                      style : TextStyle(
                        fontFamily: 'main',
                        color : Colors.grey,
                        fontSize: 17, 
                      )),
                    ]
                  ),
                ),
                Divider(
                  thickness: 0.5,
                ),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: null,
                        // Colors.lightBlue,
                      border: null, 
                      //   Border.all(
                      //     color: Colors.blueGrey,
                      // ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    margin: EdgeInsets.all(1.0),
                    padding: EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 5,
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
                Divider(
                  thickness: 0.5,
                ),
                if (inputs.length > 0)
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: primary,
                        // Colors.lightBlue,
                        border: null, 
                      //   Border.all(
                      //      color: Colors.blueGrey,
                      //  ), 
                        borderRadius: BorderRadius.circular(10),
                      ),
                      margin: EdgeInsets.all(1.0),
                      padding: EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 5,
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
          color: Colors.white70,
          fontFamily: 'main'
        ),
      ),
      avatar: CircleAvatar(
          child: Text('#',
            style : TextStyle(
              fontFamily: 'main',
              color : Colors.black),            
          ),
          // Text(label[0].toUpperCase()),
           backgroundColor: primary),
      backgroundColor: primary,
      
      
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
          color: Colors.black54,
          fontFamily: 'main'
        ),
      ),
      avatar: CircleAvatar(
          child: Text('#'),
           backgroundColor: Colors.white),
      deleteIconColor: Colors.black54,
      backgroundColor: Colors.white10,
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
        Text("My Keywords",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.bold
              fontFamily: 'main',
              color : Colors.grey,
              )),
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
            child: Text("비우기",
              style : TextStyle(
                color: Colors.grey,
                fontFamily: 'main'
              ),
              ),
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