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
  // List<String> inputs = Get.arguments;
  List<String> inputs = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: const Text('키워드관리',
              style: TextStyle(
                fontFamily: 'main',
                fontSize: 20,
              )),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_rounded),
            onPressed: () {
              Get.offNamed('/home');
              // Get.back(result : inputs);
            },
          ),
          backgroundColor: primary,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            margin: const EdgeInsets.all(3.0),
            child: Column(
              children: [
                searchBar(),
                Padding(
                  padding: const EdgeInsets.only(top: 15.0, left: 5.0),
                  child: Row(children: const [
                    Text('Keywords',
                        style: TextStyle(
                          fontFamily: 'main',
                          color: Colors.grey,
                          fontSize: 17,
                        )),
                  ]),
                ),
                const Divider(
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
                    margin: const EdgeInsets.all(1.0),
                    padding: const EdgeInsets.all(5.0),
                    child: SingleChildScrollView(
                      child: Wrap(
                        spacing: 5,
                        children: concerns.asMap().entries.map((entry) {
                          int idx = entry.key;
                          return buildChip(
                            index: idx,
                            label: entry.value['label'].toString(),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                ),
                myKeyword(),
                const Divider(
                  thickness: 0.5,
                ),
                if (inputs.length > 0)
                  // if (inputs.isEmpty)
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
                      margin: const EdgeInsets.all(1.0),
                      padding: const EdgeInsets.all(15.0),
                      child: SingleChildScrollView(
                        child: Wrap(
                          spacing: 5,
                          children: inputs.asMap().entries.map((entry) {
                            int idx = entry.key;
                            return buildSelectedChip(
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

  Widget buildChip({required int index, required String label}) {
    return InputChip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.white70, fontFamily: 'main'),
      ),
      avatar: CircleAvatar(
          child: const Text(
            '#',
            style: TextStyle(fontFamily: 'main', color: Colors.black),
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

  Widget buildSelectedChip({
    required int index,
    required String label,
  }) {
    return Chip(
      label: Text(
        label,
        style: const TextStyle(color: Colors.black54, fontFamily: 'main'),
      ),
      avatar:
          const CircleAvatar(child: Text('#'), backgroundColor: Colors.white),
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

  Widget myKeyword() {
    return Container(
      margin: const EdgeInsets.only(left: 5, right: 5),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        const Text("My Keywords",
            style: TextStyle(
              fontSize: 17,
              // fontWeight: FontWeight.bold
              fontFamily: 'main',
              color: Colors.grey,
            )),
        ClipRRect(
          borderRadius: const BorderRadius.all(Radius.circular(20)),
          // ignore: deprecated_member_use
          child: RaisedButton(
            onPressed: () {
              return setState(() {
                inputs.clear();
              });
            },
            child: const Text(
              "비우기",
              style: TextStyle(color: Colors.grey, fontFamily: 'main'),
            ),
            color: Colors.white,
          ),
        ),
      ]),
    );
  }

  Widget header() {
    return Flexible(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Flexible(
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(), labelText: '키워드 검색'),
            ),
          ),
          Flexible(
            child: IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
            ),
          )
        ],
      ),
    );
  }
}

Widget searchBar() {
  return Flexible(
    child: Padding(
      padding: const EdgeInsets.only(bottom: 3),
      child: TextFormField(
          // textAlign: TextAlign.center,
          decoration: InputDecoration(
        fillColor: Colors.grey.withOpacity(0.3),
        hintText: '키워드 입력',
        hintStyle: TextStyle(
          fontFamily: 'main',
          color: Colors.black.withOpacity(0.5),
        ),
        // contentPadding: EdgeInsets.only(left: 20),
        suffixIcon: const Icon(Icons.search),
        filled: true,
        enabledBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20)),
        focusedBorder: UnderlineInputBorder(
            borderSide: const BorderSide(color: Colors.transparent),
            borderRadius: BorderRadius.circular(20)),
      )),
    ),
  );
}
