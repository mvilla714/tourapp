import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourapp/pages/home_page2.dart';

class WelcomeWidget extends StatelessWidget {
  String title;
  String description;
  Color color;
  String pathAssets;
  bool showButton;
  WelcomeWidget(
      {required this.title,
      required this.description,
      required this.color,
      required this.pathAssets,
      required this.showButton});

  Future _saveValue(bool valor) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('showWel', valor);
  }

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
                  height: 30,
                ),
                Image.asset(
                  "$pathAssets",
                  height: 120,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "$title",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Divider(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 50),
                  child: Text("$description"),
                ),
                Divider(
                  height: 50,
                ),
                showButton == false
                    ? Container()
                    : ElevatedButton(
                        onPressed: () {
                          _saveValue(true);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomePage2(),
                            ),
                          );
                        },
                        child: Text(
                          "Vamos",
                          style: TextStyle(),
                        ),
                      )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
