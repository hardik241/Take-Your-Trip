import 'package:flutter/material.dart';

import 'package:airplane/pages/details.dart';

void main() => runApp(MyApp());

const WhiteColor = const Color(0xFFFFFFFF);
const GreyColor = const Color(0xFFBABCEF);
const BlueColor = const Color(0xFF00245A);
const RedColor = const Color(0xFFE40043);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        fontFamily: 'RobotoMono',
        primarySwatch: Colors.blue,
      ),
      home: DetailsPage(),
    );
  }
}
