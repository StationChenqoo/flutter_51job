import 'dart:math';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_51job/widgets/base-panel.dart';
import 'package:flutter_51job/widgets/common-card.dart';
import 'package:flutter_51job/widgets/company-panel.dart';
import 'package:flutter_51job/widgets/conclusion-panel.dart';
import 'package:flutter_51job/widgets/old-panel.dart';
import 'package:flutter_51job/widgets/skill-panel.dart';
import 'package:flutter_51job/widgets/such-as-panel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  int intent = 0;
  dynamic data = {};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(color: Colors.grey[100]),
        child: Column(
          children: [
            Expanded(
                child: ListView(children: [
              ...[
                BasePanel(
                  data: data,
                ),
                SkillPanel(data: data,),
                CompanyPanel(data: data,),
                // OldPanel(),
                ConclusionPanel(),
                SuchAsPanel()
              ]
                  .map((e) => Container(
                        margin: EdgeInsets.only(bottom: 12),
                        child: e,
                      ))
                  .toList(),
              SizedBox(
                height: MediaQuery.of(context).size.height,
              )
            ]))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // mini: true,
        onPressed: resetIntent,
        tooltip: 'Increment',
        child: Image.asset(
          [
            'assets/float-android.png',
            'assets/float-ie.png',
            'assets/float-spring.png'
          ][intent],
          color: Colors.white,
          height: 32,
          width: 32,
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void resetIntent() async {
    int _intent = new Random().nextInt(2);
    setState(() {
      intent = _intent;
    });
    var dio = new Dio();
    final response = await dio.get(
        'http://localhost:3000/demo/select51Job?intent=${[
      'android',
      'web',
      'java'
    ][_intent]}');
    setState(() {
      intent = _intent;
      data = response.data['data'];
    });
  }
}
