import 'package:flutter/material.dart';
import 'package:flutter_51job/models/Company.dart';
import 'package:flutter_51job/widgets/common-card.dart';
import 'package:flutter_51job/widgets/my-box-border.dart';

class CompanyPanel extends StatelessWidget {
  final data;
  CompanyPanel({required this.data});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ...(data['companies'] as List)
            .asMap()
            .entries
            .map((e) => Container(
                  margin: EdgeInsets.only(top: e.key == 0 ? 0 : 12),
                  child: CommonCard(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.value['name'],
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              e.value['date'],
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        MyBoxBorder(
                            title: '线上项目',
                            padding: EdgeInsets.only(
                                left: 12, right: 12, bottom: 8, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...(e.value['result'] as List)
                                    .asMap()
                                    .entries
                                    .map((ee) => Container(
                                        margin: EdgeInsets.only(bottom: 4),
                                        child: Text(
                                          '${ee.key + 1}.${ee.value}',
                                          style: TextStyle(
                                              color: Theme.of(context)
                                                  .primaryColor,
                                              fontSize: 14),
                                        )))
                                    .toList(),
                              ],
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        MyBoxBorder(
                            title: '主要贡献',
                            padding: EdgeInsets.only(
                                left: 12, right: 12, bottom: 8, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...(e.value['experience'] as List)
                                    .asMap()
                                    .entries
                                    .map((ee) => Container(
                                        margin: EdgeInsets.only(bottom: 4),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '${ee.key + 1}.${ee.value}',
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            )
                                          ],
                                        )))
                                    .toList(),
                              ],
                            )),
                      ])),
                ))
            .toList(),
      ],
    );
  }
}
