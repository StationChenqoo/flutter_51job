import 'package:flutter/cupertino.dart';

const DATAS = [
  'https://cdn.cctv3.net/net.cctv3.51Job/Snipaste_2023-09-04_17-49-06.jpg'
];

class SuchAsPanel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: Column(
        children: [
          ...DATAS.map((e) => Container(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.network(
                    e,
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
