import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:mvvm_project/views/home.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => AnimeViewHome(),
          ));
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => AnimeViewHome(),
          ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Image.asset("assets/Ani-DB.png")),
    );
    // return GestureDetector(
    //   child: Container(
    //     color: Colors.white,
    //     child: Center(
    //       child: Image.network(
    //           'https://www.kibrispdr.org/data/638/icon-wisata-png-10.png'),
    //     ),
    //   ),
    //   onTap: () {
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => DashboardPage()));
    //   },
    // );
  }
}
