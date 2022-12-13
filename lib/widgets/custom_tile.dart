import 'package:flutter/material.dart';

Widget CustomTile(
    BuildContext context, IconData theIcon, String text, VoidCallback onTap) {
  return Padding(
    padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
    child: Container(
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(color: Colors.grey.shade400))),
      child: InkWell(
        splashColor: Colors.redAccent.shade200,
        onTap: onTap,
        child: Container(
          height: 50,
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Icon(theIcon),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(text),
                    ),
                  ],
                ),
                const Icon(Icons.arrow_right)
              ]),
        ),
      ),
    ),
  );
}
