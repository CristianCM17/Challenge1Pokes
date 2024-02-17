import 'package:challenge1/pages/home_page.dart';
import 'package:challenge1/widgets/custom_app_bar.dart';
import 'package:challenge1/widgets/custom_bottom_bar.dart';
import 'package:challenge1/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,overlays: )
    return const MaterialApp(
      title: "Flutter Shoes",
      //theme: ThemeData.light(),
      home: HomePage(),
    );
  }
}