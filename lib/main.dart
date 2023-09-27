import 'package:conditoin/list/list.dart';
import 'package:conditoin/practiceapp/practicelist/practicelist.dart';
import 'package:conditoin/practiceapp/practicescreen/practicescreen.dart';
import 'package:conditoin/screen/productscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

      ),
      home:PracticeScreen(practices: PracticeList,) ,
    );
  }
}

