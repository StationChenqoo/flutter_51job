import 'package:flutter/material.dart';
import 'package:flutter_51job/models/Company.dart';
import 'package:flutter_51job/widgets/common-card.dart';
import 'package:flutter_51job/widgets/my-box-border.dart';

class CompanyPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        ...Company.loadCompanies()
            .asMap()
            .entries
            .map((e) => Container(
                  margin: EdgeInsets.only(
                      bottom:
                          e.key == Company.loadCompanies().length - 1 ? 0 : 12),
                  child: CommonCard(
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              e.value.name,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.w500),
                            ),
                            Text(
                              e.value.range,
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 12),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        MyBoxBorder(
                            title: '线上项目',
                            padding: EdgeInsets.only(
                                left: 12, right: 12, bottom: 8, top: 16),
                            child: Column(
                              children: [
                                ...e.value.link
                                    .map((e) => Container(
                                          margin: EdgeInsets.only(bottom: 4),
                                          child: Row(
                                            children: [
                                              Row(
                                                children: [
                                                  Image.asset(
                                                    e.icon,
                                                    height: 16,
                                                    width: 16,
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                  )
                                                ],
                                              ),
                                              SizedBox(
                                                width: 4,
                                              ),
                                              Text(
                                                e.name,
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .primaryColor,
                                                    fontSize: 14),
                                              )
                                            ],
                                          ),
                                        ))
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
                                ...e.value.honor
                                    .map((e) => Container(
                                        margin: EdgeInsets.only(bottom: 4),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.name,
                                              style: TextStyle(
                                                  fontSize: 14,
                                                  color: Colors.black),
                                            )
                                          ],
                                        )))
                                    .toList(),
                              ],
                            )),
                        SizedBox(
                          height: 12,
                        ),
                        MyBoxBorder(
                            title: '工作内容',
                            padding: EdgeInsets.only(
                                left: 12, right: 12, bottom: 8, top: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ...e.value.detail
                                    .map((e) => Container(
                                        margin: EdgeInsets.only(bottom: 4),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              e.name,
                                              style: TextStyle(
                                                  fontSize: 16,
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.w500),
                                            ),
                                            SizedBox(
                                              height: 5,
                                            ),
                                            Container(
                                              margin: EdgeInsets.only(left: 20),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  ...(e.value as List<String>)
                                                      .map((e) => Container(
                                                            child: Text(
                                                              ' · ${e}',
                                                              style: TextStyle(
                                                                  fontSize: 14),
                                                            ),
                                                          ))
                                                      .toList()
                                                ],
                                              ),
                                            )
                                          ],
                                        )))
                                    .toList(),
                              ],
                            ))
                      ])),
                ))
            .toList(),
      ],
    );
  }
}
