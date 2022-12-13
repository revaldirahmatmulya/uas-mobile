import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvvm_project/views/about.dart';
import 'package:mvvm_project/views/home.dart';
import 'package:mvvm_project/views/popular.dart';

void main() {
  runApp(GetMaterialApp(
    home: AnimeViewHome(),
    initialRoute: '/home',
    routes: {
      '/home': (context) => AnimeViewHome(),
      '/popular': (context) => AnimePopularView(),
      '/about': (context) => const About(),
    },
  ));
}
