// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:instagram/pages/instagram_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Instagram App',
        home: InstagramPage());
  }
}
