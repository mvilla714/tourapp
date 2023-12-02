import 'package:flutter/material.dart';

class WelcomeWidge extends StatelessWidget {
  String title;
  String description;
  Color color;
  String pathAssets;
  WelcomeWidge(
      {required this.title,
      required this.description,
      required this.color,
      required this.pathAssets});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: MediaQuery.of(context).size.height - 200,
            width: MediaQuery.of(context).size.width - 50,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                ),
                Image.asset(
                  "$pathAssets",
                  height: 150,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "$title",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Divider(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text("$description"),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
