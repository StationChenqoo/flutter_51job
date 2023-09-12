import 'package:flutter/material.dart';
import 'package:flutter_51job/widgets/common-card.dart';

const DATAS = [
  'Java爬虫和反爬',
  'Java/JS/Dart的AES对称加解密',
  'Java图像和视频的处理（FFMpeg）',
  'SpringBoot + MyBatis + MySQL + MongoDB + Redis',
  'ExpressJS/KoaJS + MongoDB + Redis',
  'Nginx代理（伪静态、HTTPS证书、端口重定向 ...）',
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
        Wrap(
          children: [
            ...DATAS
                .asMap()
                .entries
                .map((e) => Container(
                      margin: EdgeInsets.only(right: 10, bottom: 5),
                      child: Text(
                        '${e.key + 1}.${e.value}',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ))
                .toList()
          ],
        )
      ],
    ));
  }
}
