import 'package:flutter/material.dart';

class PageData {
  final String page_title;
  final Widget screen;
  final int tabIndex;

  PageData({this.page_title, this.screen, this.tabIndex = 2});
}
