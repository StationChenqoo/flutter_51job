import 'package:flutter/material.dart';
import 'package:flutter_51job/home.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(useMaterial3: true, fontFamily: 'HarmonyOS-Sans'),
      home: const HomePage(),
    );
  }
}
