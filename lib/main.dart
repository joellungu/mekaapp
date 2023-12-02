import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mekaapp/pages/app_controller.dart';

import 'pages/accueil.dart';
import 'pages/bienvenue.dart';
import 'utils/theme_class.dart';

void main() async {
  //
  AppController appController = Get.put(AppController());
  //
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Make°App',
      themeMode: ThemeMode.system,
      theme: ThemeClass
          .lightTheme, // applies this theme if the device theme is light mode
      darkTheme: ThemeClass
          .darkTheme, // applies this theme if the device theme is dark mode

      home: Bienvenue(),
    );
  }
}
