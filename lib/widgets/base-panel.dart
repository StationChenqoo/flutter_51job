import 'package:flutter/material.dart';
import 'package:flutter_51job/models/SimpleKeyValue.dart';
import 'package:flutter_51job/widgets/common-card.dart';

class BasePanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
        child: Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(32),
              child: Image.asset(
                'assets/i.jpg',
                height: 78,
                width: 78,
              ),
            ),
            SizedBox(
              width: 12,
            ),
            Expanded(
                child: SizedBox(
              height: 78,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '孙宇鹏',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                  Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset('assets/lcu.jpg',
                            height: 20, width: 20),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '聊城大学 · 软件工程 · 本科 (2019年毕业）',
                        style: TextStyle(color: Colors.grey, fontSize: 14),
                      )
                    ],
                  ),
                  Text(
                    '低级资浅开发工程师（全栈 & 偏前端）',
                    style: TextStyle(
                      color: Colors.black87,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            )),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                ...SimpleKeyValue.loadConnects().map((e) => Container(
                      child: Row(
                        children: [
                          Text(
                            e.value,
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Icon(
                            e.icon,
                            color: Theme.of(context).primaryColor,
                            size: 16,
                          )
                        ],
                      ),
                    ))
              ],
            )
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            ...SimpleKeyValue.loadBaseSkills().map((e) => Container(
                  padding: EdgeInsets.symmetric(vertical: 1, horizontal: 6),
                  // margin: EdgeInsets.only(right: 10),
                  decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor.withOpacity(0.18),
                      borderRadius: BorderRadius.circular(12)),
                  child: Row(
                    children: [
                      Image.asset(
                        e.icon,
                        color: Theme.of(context).primaryColor,
                        height: 16,
                        width: 16,
                      ),
                      SizedBox(
                        width: 6,
                      ),
                      Text(
                        e.name,
                        style: TextStyle(
                            color: Theme.of(context).primaryColor,
                            fontSize: 14),
                      )
                    ],
                  ),
                ))
          ],
        )
      ],
    ));
  }
}
