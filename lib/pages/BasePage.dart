import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gift/pages/HomePage.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:gift/widgets/bottom_nav_bar.dart';
import 'package:line_icons/line_icons.dart';
import 'package:provider/provider.dart';

class BasePage extends StatefulWidget {
  @override
  _BasePageState createState() => _BasePageState();
}

class _BasePageState extends State<BasePage> {
  @override
  Widget build(BuildContext context) {
    PageNotifier _pageNotifier = Provider.of<PageNotifier>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            LineIcons.align_left,
            color: Colors.white,
          ),
          onPressed: null,
        ),
        title: Text(
          'Gift Shop',
          style: TextStyle(
              fontFamily: 'HolyFat', fontSize: 40, color: Colors.white),
        ),
        elevation: 0,
        actions: <Widget>[
          IconButton(
              icon: Icon(
                EvaIcons.gift,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(
                EvaIcons.search,
                color: Colors.white,
              ),
              onPressed: null)
        ],
      ),
      body: Consumer<PageNotifier>(
        builder: (_, _noti, child) {
          return WillPopScope(
            onWillPop: () => _noti.onBackPressed(context),
            child: _noti.getPage != null ? _noti.getPage.screen : MyHomePage(),
          );
        },
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
