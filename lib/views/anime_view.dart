import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:mvvm_project/controllers/anime_controller.dart';

class AnimeView extends StatelessWidget {
  var controller = Get.put(AnimeController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.isLoading.value == true
          ? CircularProgressIndicator()
          : Center(
              child: Text(controller.datas!.results![0].title.toString()))),
    );
  }
}
