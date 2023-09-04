import 'package:flutter/material.dart';
import 'package:flutter_51job/models/SimpleKeyValue.dart';

class Company {
  String name;
  String range;
  List<SimpleKeyValue> link;
  List<SimpleKeyValue> honor;
  List<SimpleKeyValue> detail;

  Company(
      {required this.name,
      required this.range,
      required this.link,
      required this.honor,
      required this.detail});

  static List<Company> loadCompanies() {
    return [
      Company(name: '云南白药集团', range: '2021年7月-2023年9月', link: [
        SimpleKeyValue(
            icon: 'assets/company-mobile.png',
            name: '采之汲（iOS: AppStore & android: Huawei Xiaomi OPPO vivo厂商应用商店）',
            value: ''),
        SimpleKeyValue(
            icon: 'assets/company-wechat.png',
            name: '采之汲、汲美（微信小程序）',
            value: ''),
        SimpleKeyValue(
            icon: 'assets/company-pc.png',
            name: '后台管理系统（上述C端对应的后台）',
            value: ''),
      ], honor: [
        SimpleKeyValue(
            icon: '', name: ' · 🥇 公司核心项目的代码贡献率最高的 Contributor.', value: ''),
        SimpleKeyValue(icon: '', name: ' · 🐞 原生问题疑难杂症的 Solver.', value: ''),
      ], detail: [
        SimpleKeyValue(icon: '', name: '🆕 编写原生模块', value: [
          'RN调用NativeModules，处理消息通知、各种原生层面权限的授权（各个android版本对于FileProvider、Uri、Http的处理）。',
          'RN消息推送（Android厂商消息推送通道接入）。'
              '国内应用上架隐私政策获取方式，第三方库SDK初始化时机（有的三方SDK初始化在MainApplication会提前获取设备 id）。',
          'Native页面加载RN页面的时机（隐私政策和用户协议写在原生Activity，向RN页面跳转） ...'
        ]),
        SimpleKeyValue(icon: '', name: '💄 公共组件封装', value: [
          '弹窗队列的管理（iOS表现的Modal是全局的单例模式）。',
          '地址选择的封装（react-native-picker有BUG，会闪退，基于react-native-swiper的二次封装）。',
          '瀑布流组件的封装（目前已开源react-native-staggered-list，无缝衔接FlatList API，支持ts）。',
          '视频播放组件的封装（react-native-video的二次封装）。',
          '基于Ant design的二次封装（这个比较简单） ...'
        ]),
        SimpleKeyValue(icon: '', name: '🚧 项目代码相关', value: [
          '性能优化（重复渲染、定位 Crash）。',
          '用户行为埋点分析（神策埋点）。',
          'react-navigation 5.x 路由的管理（清栈、跳栈、重定向） ...'
        ]),
        SimpleKeyValue(icon: '', name: '🚀 项目重大提升', value: [
          'Jenkins打包平台构建（解放双手，一键构建）。',
          'CodePush热更新以及webpack的增量更新（按需加载JSBundle）...'
        ]),
      ]),
      Company(name: '深圳市润丰数码技术有限公司', range: '2021年3月-2021年6月', link: [
        SimpleKeyValue(
            icon: 'assets/company-mobile.png',
            name: 'Renpho health（Google Play）',
            value: ''),
      ], honor: [
        SimpleKeyValue(icon: '', name: '🎨 RN Team 从 0 到 1。', value: '')
      ], detail: [
        SimpleKeyValue(
            icon: '',
            name: '🆕 编写原生模块',
            value: ['RN调用NativeComponents，处理三方厂商蓝牙和设备的通讯（包裹三方SDK生成的心电图视图）...']),
        SimpleKeyValue(
            icon: '', name: '💄 公共组件封装', value: ['跟上个公司做的内容差不多 ...']),
        SimpleKeyValue(icon: '', name: '🚧 项目代码相关', value: [
          'class → Hooks，aHooks处理复杂页面以及业务逻辑的处理。',
          'redux → zustand',
          'js → ts ...'
        ]),
        SimpleKeyValue(
            icon: '',
            name: '🚀 项目重大提升',
            value: ['设备面板的搭建，按需加载JSBundle（App管理不同设备的JSBundle，定向进行设备更新）']),
      ]),
      Company(name: '深圳边度网络科技有限公司', range: '2020年6月-2021年3月', link: [
        SimpleKeyValue(
            icon: 'assets/company-mobile.png',
            name: 'mPOS（iOS: AppStore）',
            value: ''),
      ], honor: [
        SimpleKeyValue(icon: '', name: ' · 🐞 原生问题疑难杂症的 Solver.', value: ''),
      ], detail: [
        SimpleKeyValue(icon: '', name: '🆕 编写原生模块', value: [
          'RN调用NativeModules，进行TTS普通话、粤语和英语的语音播报（讯飞语音SDK）。',
          '调用硬件SDK进行热敏打印机的打印（x86 Pos机编程）。',
          '八达通支付 ...'
        ]),
        SimpleKeyValue(
            icon: '',
            name: '💄 公共组件封装',
            value: ['虚拟键盘。', '通用对话框。', '通用弹窗 ...']),
        SimpleKeyValue(
            icon: '',
            name: '🚧 项目代码相关',
            value: ['全局数据状态的规范、redux & redux-thunk & redux-persist ...']),
        SimpleKeyValue(icon: '', name: '🚀 项目重大提升', value: [
          'react-native的升级。',
          '调试模式的升级，可以直接console调试网络请求（RN 0.62之前是没有Flipper的）。',
          '路由react-navigation的升级 （现在都6.x了，他还用2.x）...'
        ]),
      ]),
    ];
  }
}
