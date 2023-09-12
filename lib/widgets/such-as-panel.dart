import 'package:flutter/cupertino.dart';
import 'package:flutter_51job/models/SimpleKeyValue.dart';
import 'package:flutter_51job/widgets/common-card.dart';
import 'package:flutter_51job/widgets/my-box-border.dart';

const DATAS = [
  'https://cdn.cctv3.net/net.cctv3.51Job/Snipaste_2023-09-04_17-49-06.jpg'
];

class SuchAsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return CommonCard(
      child: Column(
        children: [
          SizedBox(
            height: 12,
          ),
          ...SimpleKeyValue.loadSuchAses()
              .asMap()
              .entries
              .map(
                (e) => Container(
                  margin: EdgeInsets.only(
                      bottom: e.key == SimpleKeyValue.loadSuchAses().length - 1
                          ? 0
                          : 12),
                  child: MyBoxBorder(
                      title: e.value.name,
                      child: Column(children: [
                        Image.network(
                          e.value.icon,
                          width: double.infinity,
                          fit: BoxFit.fitWidth,
                        ),
                      ]),
                      padding: EdgeInsets.all(12)),
                ),
              )
              .toList()
        ],
      ),
    );
  }
}
