import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mvvm_project/widgets/custom_tile.dart';
import 'package:mvvm_project/widgets/stock.dart';

class AnimeDetailsPage extends StatelessWidget {
  final String title;
  final String img;
  final String desc;
  AnimeDetailsPage(
      {required this.title, required this.img, required this.desc});
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Get.defaultDialog(
                      title: title,
                      content: Image.network(
                        img,
                        fit: BoxFit.cover,
                        height: 500,
                        width: Get.width,
                      ),
                    ),
                    child: Container(
                      height: 500,
                      width: Get.width,
                      color: Colors.grey,
                      child: Image.network(
                        img,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    left: 10,
                    child: IconButton(
                      onPressed: () => Get.back(),
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 5,
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.favorite,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 10,
                    child: Stock(
                      text: 'OverView',
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stock(
                          text: title,
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 20),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Stock(
                              text: 'Story Line',
                              fontSize: 22,
                            ),
                          ),
                        ),
                        SizedBox(height: 20),
                        Stock(
                          text: desc,
                          fontSize: 14,
                          maxLines: 100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              Container(
                height: 200,
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
      ),
    );
  }
}
