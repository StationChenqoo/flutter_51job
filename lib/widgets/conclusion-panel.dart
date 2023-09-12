import 'package:flutter/material.dart';
import 'package:flutter_51job/widgets/common-card.dart';

// const DATAS = [
//   '👏 Join team quickly.',
//   '🚀 FullStack developer.',
//   '🐞 Analyse and deal bugs.',
//   '🚧 Structured and formatted code.',
//   '🆕 Accept new language or framework.',
//   '💄 Pursuing the ultimate user experience, pixel level reproduction of design drafts, millisecond level animation experience.',
// ];
const DATAS = [
  '🚗 沪A可上高架、过地道，辐射市区半个小时可到公司（加班不需要打车 😂）.',
  '🐛 面向 Google StackOverflow ChatGPT4.0 编程，0 errors.',
  '👀 Forked Twitter、GitHub，始终关注行业最新动向.',
  '🐞 前后端（Node后端 & Java后端）都懂，能协助后端设计数据库，制定接口规范，协助测试快速定位问题.',
  '💄 追求极致，像素级的设计和毫秒级的动画交互体验.',
  '🚀 代码有强迫症，精确到1个Tab/Space，1个变量名/函数名，Code review其他伙伴代码.',
  '🌏 开源社区 GitHub 的活跃者，线下 Google / Microsoft 开发者会议的积极打酱油者.',
  '👘 熟读明清史和近现代史，修身齐家治国平天下，洞察细节、对事物的发展具有预判，格局能打开 ...'
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
