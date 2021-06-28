import 'package:flutter/material.dart';
import 'package:phone_shop/ui/android_devices_category_ui/huawai_page.dart';
import 'package:phone_shop/ui/android_devices_category_ui/xiaomi_page.dart';
import 'package:phone_shop/ui/android_devices_category_ui/lg_page.dart';
import 'package:phone_shop/ui/ios_devices_category_ui/laptop_page.dart';
import 'package:phone_shop/ui/ios_devices_category_ui/ipad_page.dart';
import 'package:phone_shop/ui/phone_page.dart';
import 'package:phone_shop/ui/ios_page.dart';
import 'package:phone_shop/ui/android_page.dart';
import 'package:phone_shop/ui/ios_devices_category_ui/watch_page.dart';
import 'package:phone_shop/ui/ios_devices_category_ui/iphone_page.dart';
import 'package:phone_shop/ui/android_devices_category_ui/samsung_page.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => PhonePage(),
        '/ios': (context) => const IOSPage(),
        '/android': (context) => const AndroidPage(),
        '/ipads': (context) => Ipads(),
        '/laptops': (context) => Laptops(),
        '/watches': (context) => Watches(),
        '/iphones': (context) => Iphones(),
        '/samsung': (context) => Samsung(),
        '/xiaomi': (context) => Xiaomi(),
        '/lg': (context) => Lg(),
        '/huawai': (context) => Huawai(),
      },
    );
  }
}
