import 'package:flutter/material.dart';
import 'package:flutter_51job/widgets/common-card.dart';

const DATAS = [
  '👏 Join team quickly.',
  '🚀 FullStack developer.',
  '🐞 Analyse and deal bugs.',
  '🚧 Structured and formatted code.',
  '🆕 Accept new language or framework.',
  '💄 Pursuing the ultimate user experience, pixel level reproduction of design drafts, millisecond level animation experience.',
];

class ConclusionPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '个人陈述',
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
