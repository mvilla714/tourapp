import 'package:flutter/material.dart';
import 'package:tourapp/pages/widgets/welcome_widget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        body: Column(),
      ),
    );
  }
}
