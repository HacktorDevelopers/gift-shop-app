import 'package:flutter/material.dart';
import 'package:gift/widgets/CategoryList.dart';
import 'package:gift/widgets/NewGiftList.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Column(
            children: <Widget>[NewGiftList(), CategoryList()],
          )),
    );
  }
}
