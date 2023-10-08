import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_51job/constants/xUtils.dart';
import 'package:flutter_51job/models/SimpleKeyValue.dart';
import 'package:flutter_51job/widgets/common-card.dart';

class SkillPanel extends StatelessWidget {
  final data;
  SkillPanel({required this.data});
  Widget buildGrouper(context, index, icon, name, details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Image.asset(
            icon,
            height: 24,
            width: 28,
          ),
          SizedBox(
            width: 5,
          ),
          Text(
            name,
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
          )
        ]),
        SizedBox(
          height: 5,
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // https://z.zhipin.com/web/wxapp/resource/zhipin/emoji/gif2/emoji-7.gif
        // 7 9 38
        ...(data?['conclusion'] as List)
            .asMap()
            .entries
            .map((e) => Container(
                  margin: EdgeInsets.only(top: 5),
                  child: Text(
                    '${e.key + 1}.${e.value}',
                    style: TextStyle(fontSize: 14),
                  ),
                ))
            .toList()
      ],
    ));
  }
}
