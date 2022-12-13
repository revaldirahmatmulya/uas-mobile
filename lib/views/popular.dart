import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:mvvm_project/controllers/anime_controller.dart';
import 'package:mvvm_project/views/detail.dart';
import 'package:mvvm_project/widgets/card.dart';
import 'package:mvvm_project/widgets/custom_tile.dart';

class AnimePopularView extends StatelessWidget {
  var controller = Get.put(AnimePopularController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ani-DB"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: Colors.black,
      body: Obx(() => controller.isLoading.value == true
          ? CircularProgressIndicator()
          : Container(
              padding: const EdgeInsets.all(8),
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 8,
                      mainAxisSpacing: 8,
                      mainAxisExtent: MediaQuery.of(context).size.width * 0.4),
                  itemCount: controller.datas!.results?.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      child: CardLayout(
                          controller.datas!.results![index].title!.romaji
                              as String,
                          controller.datas!.results![index].image as String),
                      onTap: () => Get.to(
                        AnimeDetailsPage(
                          title: controller.datas!.results![index].title!.romaji
                              as String,
                          img:
                              controller.datas!.results![index].image as String,
                          desc: controller.datas!.results![index].description
                              as String,
                        ),
                      ),
                    );
                  }),
            )),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 200,
              // ignore: sort_child_properties_last
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage("assets/Ani-DB.png"),
                      height: 200,
                    )
                  ]),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            CustomTile(context, Icons.trending_up, "Trending",
                () => {Navigator.of(context).pushNamed('/home')}),
            CustomTile(context, Icons.star, "Popular",
                () => {Navigator.of(context).pushNamed('/popular')}),
            CustomTile(context, Icons.info, "About",
                () => {Navigator.of(context).pushNamed('/about')}),
          ],
        ),
      ),
    );
  }
}

//child: Text(controller.datas!.results![0].title.toString())
