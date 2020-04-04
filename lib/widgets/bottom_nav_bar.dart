import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:gift/pages/Settings.dart';
import 'package:gift/src/models/page_data.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:provider/provider.dart';

class BottomNavBar extends StatefulWidget {
  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  var selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    PageNotifier _pageNotifier = Provider.of<PageNotifier>(context);
    return CurvedNavigationBar(
      backgroundColor: Colors.white,
      color: Colors.red,
      buttonBackgroundColor: Colors.red,
      height: 50,
      animationDuration: Duration(
        milliseconds: 200,
      ),
      index: _pageNotifier.getPage == null
          ? selectedIndex
          : _pageNotifier.getPage.tabIndex,
      animationCurve: Curves.bounceInOut,
      items: <Widget>[
        IconButton(
          icon: Icon(EvaIcons.list, size: 20, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(EvaIcons.heart, size: 20, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(EvaIcons.plus, size: 20, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(EvaIcons.person, size: 20, color: Colors.white),
          onPressed: null,
        ),
        IconButton(
          icon: Icon(EvaIcons.settings, size: 20, color: Colors.white),
          onPressed: () {
            _pageNotifier.changeScreen(
                context,
                PageData(
                    page_title: 'Settings', screen: Settings(), tabIndex: 4));
            setState(() => selectedIndex = 4);
          },
        ),
      ],
      onTap: (index) {
        setState(() => selectedIndex = index);
        print(index);
      },
    );
  }
}
