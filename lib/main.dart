import 'package:flutter/material.dart';
import 'package:tourapp/pages/home_page.dart';
import 'package:tourapp/pages/init_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      //home: InitPage(),
    ),
  );
}
