import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tourapp/pages/home_page2.dart';
import 'package:tourapp/pages/init_page.dart';
import 'package:tourapp/pages/widgets/welcome_widget.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showWelcome = true;

  /*Future isFirstTime() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    showWelcome = preferences.getBool('showWel') ?? true;
    if (showWelcome == true) {
      await preferences.setBool("showWel", false);
      showWelcome = false;
    }
  }*/

  /*Future _saveValue(bool valor) async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setBool('variable', valor);
  }*/

  Future _getValue() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    if (preferences.getBool("showWel") == true) {
      //showWelcome = preferences.getBool('showWel') ?? true;
      print(preferences.getBool("showWel"));
      showWelcome = false;
      setState(() {});
    } else {
      showWelcome = true;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    print(showWelcome);
    _getValue();
    print(showWelcome);
  }

  @override
  Widget build(BuildContext context) {
    return showWelcome == true ? InitPage() : HomePage2();
  }
}
