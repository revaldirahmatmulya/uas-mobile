import 'dart:js';

import 'package:flutter/material.dart';
import 'package:mvvm_project/widgets/custom_tile.dart';

Widget DrawerCustom() {
  return Drawer(
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image(
              image: AssetImage("assets/Ani-DB.png"),
              height: 200,
            )
          ]),
          decoration: const BoxDecoration(color: Colors.white),
        ),
        CustomTile(context as BuildContext, Icons.trending_up, "Trending",
            () => {Navigator.of(context as BuildContext).pushNamed('/home')}),
        CustomTile(
            context as BuildContext,
            Icons.star,
            "Popular",
            () =>
                {Navigator.of(context as BuildContext).pushNamed('/popular')}),
        CustomTile(context as BuildContext, Icons.info, "About",
            () => {Navigator.of(context as BuildContext).pushNamed('/about')}),
      ],
    ),
  );
}
