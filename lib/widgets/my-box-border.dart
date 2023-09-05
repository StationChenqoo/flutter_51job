import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyBoxBorder extends StatelessWidget {
  final title;
  final child;
  final padding;
  MyBoxBorder(
      {required this.title, required this.child, required this.padding});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: padding,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                  width: 1,
                  color: Theme.of(context).primaryColor.withOpacity(0.18))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 2,
              ),
              child
            ],
          ),
        ),
        Positioned(
            left: 32,
            top: -8,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                title,
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    color: Theme.of(context).primaryColor),
              ),
            ))
      ],
    );
  }
}
