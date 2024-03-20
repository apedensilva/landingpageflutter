import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:landingpage/pagesfolder/home_page.dart';

void main() {
  runApp(const Landingpage());
}

class Landingpage extends StatelessWidget {
  const Landingpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //pang alis nung debug banner
      theme: ThemeData.dark(), // Theme ng system
      title: 'Landing Page',
      home: const homepage(),
    );
  }
}
