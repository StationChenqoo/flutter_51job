import 'package:flutter/material.dart';
import 'package:flutter_51job/widgets/common-card.dart';

const DATAS = [
  'Java爬虫和反爬',
  'Java的AES对称加解密',
  'Java图像和视频的处理（FFMpeg）',
  'SpringBoot + MyBatis + MySQL + MongoDB + Redis',
  'NextJS服务端渲染',
  'ReactJS以及周边生态',
  'Flutter & Material Design',
];

class OldPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '其他技能简要概述',
          style: TextStyle(
              color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),
        ),
        SizedBox(
          height: 6,
        ),
        ...DATAS
            .map((e) => Container(
                  child: Text(
                    e,
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ))
            .toList()
      ],
    ));
  }
}
