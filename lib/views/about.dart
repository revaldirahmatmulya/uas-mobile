import 'package:flutter/material.dart';
import 'package:mvvm_project/widgets/custom_tile.dart';

class About extends StatelessWidget {
  const About({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ani-DB"),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
    );
  }
}
