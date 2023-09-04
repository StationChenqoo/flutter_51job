import 'package:flutter/material.dart';

class SimpleKeyValue {
  final icon;
  final name;
  final value;

  SimpleKeyValue({required this.icon, required this.name, required this.value});

  static List<SimpleKeyValue> loadConnects() {
    return [
      SimpleKeyValue(icon: Icons.event_outlined, name: '', value: '1995年10月'),
      SimpleKeyValue(
          icon: Icons.person_pin_outlined, name: '', value: '上海市普陀区'),
      SimpleKeyValue(
          icon: Icons.phone_iphone_outlined, name: '', value: '15552198996'),
      SimpleKeyValue(
          icon: Icons.email_outlined, name: '', value: '429884848@qq.com'),
    ];
  }

  static List<SimpleKeyValue> loadBaseSkills() {
    return [
      SimpleKeyValue(icon: 'assets/react.png', name: 'React Native', value: ''),
      SimpleKeyValue(icon: 'assets/flutter.png', name: 'Flutter', value: ''),
      SimpleKeyValue(icon: 'assets/wechat.png', name: '小程序', value: ''),
      SimpleKeyValue(
          icon: 'assets/spring-boot.png', name: 'SpringBoot', value: ''),
      SimpleKeyValue(icon: 'assets/mysql.png', name: 'MySQL', value: ''),
      SimpleKeyValue(icon: 'assets/mongodb.png', name: 'Mongo DB', value: ''),
    ];
  }

  static List<SimpleKeyValue> loadPrettySkills(int index) {
    return [
      [
        SimpleKeyValue(
            icon: 'assets/skills-react.png', name: 'React Native', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-flutter.png', name: 'Flutter', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-github.png', name: 'Git', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-android-studio.png',
            name: 'Android Studio',
            value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-xcode.png', name: 'Xcode', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-vscode.png', name: 'VS Code', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-js.png', name: 'JavaScript', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-ts.png', name: 'TypeScript', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-wechat.png', name: '微信小程序', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-springboot.png',
            name: 'SpringBoot',
            value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-redux.png', name: 'Redux', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-android.png', name: 'Android', value: ''),
        SimpleKeyValue(icon: 'assets/skills-iOS.png', name: 'iOS', value: ''),
      ],
      [
        SimpleKeyValue(
            icon: 'assets/skills-mysql.png', name: 'MySQL', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-redis.png', name: 'Redis', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-mongodb.png', name: 'MongoDB', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-postman.png', name: 'Postman', value: ''),
        SimpleKeyValue(icon: 'assets/skills-npm.png', name: 'NPM', value: ''),
        SimpleKeyValue(icon: 'assets/skills-h5.png', name: 'HTML 5', value: ''),
        SimpleKeyValue(icon: 'assets/skills-css3.png', name: 'CSS3', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-linux.png', name: 'Linux', value: ''),
      ],
      [
        SimpleKeyValue(
            icon: 'assets/skills-webpack.png', name: 'Webpack', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-node.png', name: 'Node JS', value: ''),
        SimpleKeyValue(icon: 'assets/skills-sass.png', name: 'Sass', value: ''),
        SimpleKeyValue(icon: 'assets/skills-yarn.png', name: 'Yarn', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-python.png', name: 'Python', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-nest.png', name: 'NestJs', value: ''),
        SimpleKeyValue(
            icon: 'assets/skills-nginx.png', name: 'Nginx', value: '')
      ]
    ][index];
  }
}