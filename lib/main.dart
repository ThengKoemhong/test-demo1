import 'package:ata_app_app/test/url.dart';
import 'package:ata_app_app/view/firtscreen.dart';
import 'package:ata_app_app/view/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_framework/breakpoint.dart';
import 'package:responsive_framework/responsive_breakpoints.dart';

import 'controller/videolist_controller.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      builder: (context, child) => ResponsiveBreakpoints.builder(
        child: child!,
        breakpoints: [
          const Breakpoint(start: 0, end: 500, name: MOBILE),
          const Breakpoint(start: 501, end: 900, name: TABLET),
          const Breakpoint(start: 901, end: 1920, name: DESKTOP),
        ],
      ),
      home: MyHomePage(
        title: 'URL',
        key: key,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
