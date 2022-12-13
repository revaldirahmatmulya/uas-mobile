import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:mvvm_project/widgets/custom_tile.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ani-DB"),
      ),
      backgroundColor: Colors.black,
      body: ListView(
        children: const <Widget>[
          Card(child: ListTile(title: Text('Anime Database App'))),
          Card(child: ListTile(title: Text('By Revaldi Rahmatmulya'))),
          Card(child: ListTile(title: Text('V1:12.12.22'))),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            Container(
              height: 300,
              // ignore: sort_child_properties_last
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [Image(image: AssetImage("assets/Ani-DB.png"))]),
              decoration: const BoxDecoration(color: Colors.white),
            ),
            CustomTile(context, Icons.trending_up, "Trending",
                () => {Navigator.of(context).pushNamed('/home')}),
            CustomTile(context, Icons.fire_extinguisher_sharp, "Popular",
                () => {Navigator.of(context).pushNamed('/popular')}),
            CustomTile(context, Icons.info, "About",
                () => {Navigator.of(context).pushNamed('/about')}),
          ],
        ),
      ),
    );
  }
}
