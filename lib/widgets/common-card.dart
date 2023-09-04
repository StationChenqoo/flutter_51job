import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CommonCard extends StatelessWidget {
  final child;

  CommonCard({required this.child});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(12)),
      child: child,
      padding: EdgeInsets.all(12),
    );
  }
}