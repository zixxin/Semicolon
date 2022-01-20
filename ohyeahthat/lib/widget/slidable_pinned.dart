// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:ohyeahthat/data/model.dart';

enum SlidableAction { archive, delete }

class slidable_imp_widget extends StatefulWidget {
  final Widget child;
  final Function(SlidableAction action) onDismissed;
  final Content selected_item;

  const slidable_imp_widget({
    required this.child,
    required this.onDismissed,
    required this.selected_item,
    Key? key,
  }) : super(key: key);

  @override
  State<slidable_imp_widget> createState() => SlidableImpWidgetState();
}

class SlidableImpWidgetState extends State<slidable_imp_widget> {
  @override
  Widget build(BuildContext context) => Slidable(
        actionPane: const SlidableDrawerActionPane(),
        child: widget.child,

        /// left side
        actions: <Widget>[
          IconSlideAction(
            caption: '중요해제',
            color: Colors.orange,
            icon: Icons.star_rounded,
            onTap: () {
              widget.onDismissed(SlidableAction.delete);
              setState(() {
                widget.selected_item.imp = false;
              });
              // ignore_for_file: avoid_print
              print('중요공지위젯확인 : ');
              // print(widget.count);
            },
          ),
        ],
      );
}
