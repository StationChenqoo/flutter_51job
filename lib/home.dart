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
                BasePanel(),
                SkillPanel(),
                CompanyPanel(),
                OldPanel(),
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
    );
  }
}
