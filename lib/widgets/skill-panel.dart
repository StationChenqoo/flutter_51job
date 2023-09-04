import 'package:flutter/material.dart';
import 'package:flutter_51job/constants/xUtils.dart';
import 'package:flutter_51job/models/SimpleKeyValue.dart';
import 'package:flutter_51job/widgets/common-card.dart';

class SkillPanel extends StatelessWidget {
  Widget buildGrouper(context, index, icon, name, details) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          Image.asset(
            icon,
            height: 24,
            width: 24,
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
        Wrap(
          children: [
            ...SimpleKeyValue.loadPrettySkills(index).map((e) {
              // String badge =
              // 'https://img.shields.io/badge/${e.name}-${color}.svg?style=flat-square&logo=${e.icon}&logoColor=white';
              // print(badge);
              Color color = xUtils.useRandomColor();
              return Container(
                  margin: EdgeInsets.only(right: 5, bottom: 4),
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 4),
                  decoration: BoxDecoration(
                      border: Border.all(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(16)),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        e.icon,
                        height: 12,
                        fit: BoxFit.fitHeight,
                        color: Theme.of(context).primaryColor,
                      ),
                      SizedBox(
                        width: 4,
                      ),
                      Text(
                        e.name,
                        style: TextStyle(
                            fontSize: 10,
                            color: Theme.of(context).primaryColor),
                      )
                    ],
                  ));
            })
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
        child: Column(
      children: [
        ...[
          buildGrouper(context, 0, 'assets/face-1.png', '熟练', []),
          buildGrouper(context, 1, 'assets/face-2.png', '一般', []),
          buildGrouper(context, 2, 'assets/face-3.png', '了解', []),
        ]
            .asMap()
            .entries
            .map((e) => Container(
                  child: e.value,
                  margin: EdgeInsets.only(bottom: e.key < 2 ? 12 : 0),
                ))
            .toList()
      ],
    ));
  }
}
