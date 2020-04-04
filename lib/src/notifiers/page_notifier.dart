import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gift/pages/HomePage.dart';
import 'package:gift/src/models/page_data.dart';

class PageNotifier extends ChangeNotifier {
  PageData _initialPage =
      PageData(page_title: 'Product Page', screen: MyHomePage());
  PageData _currentScreen;
  List<PageData> _visitedScreens = [];

  PageData get getPage => _initialPage;
  List<PageData> get getVisitedScreens => _visitedScreens;

  void set setPage(PageData page) => _initialPage = page;

  void changeScreen(BuildContext context, PageData page) {
    if (!_visitedScreens.contains(page)) {
      _visitedScreens.add(_currentScreen);
    }
    _currentScreen = page;
//    Navigator.of(context).push(MaterialPageRoute(builder: (_) => page.screen));
    print(_visitedScreens);
    setPage = page;
    notifyListeners();
  }

  void popScreen(BuildContext context) {
    print(_visitedScreens);
    _currentScreen = _visitedScreens.last;
    _visitedScreens.removeLast();
    setPage = _currentScreen;
//    Navigator.of(context).pop();
    notifyListeners();
  }

  ScreenNotifier() {
    _currentScreen = _initialPage;
    _visitedScreens.add(_initialPage);
    notifyListeners();
  }

  Future<bool> onBackPressed(BuildContext context) async {
    if (getVisitedScreens.length > 0) {
      popScreen(context);
      return Future.value(false);
    } else {
      bool close = await _onBackPressed(context);
      return Future.value(close);
    }
  }

  Future<bool> _onBackPressed(BuildContext context) {
    return showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: Text('Are you sure?'),
            content: Text('Do you want to exit an App'),
            actions: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(false),
                  child: Text("NO"),
                ),
              ),
              SizedBox(height: 16),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: GestureDetector(
                  onTap: () => Navigator.of(context).pop(true),
                  child: Text("YES"),
                ),
              ),
            ],
          ),
        ) ??
        false;
  }
}
