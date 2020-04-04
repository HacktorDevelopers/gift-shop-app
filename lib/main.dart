import 'package:flutter/material.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:provider/provider.dart';

import 'pages/BasePage.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => PageNotifier(),
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gift Shop',
      home: BasePage(),
      theme: ThemeData(
          primaryColor: Colors.white,
          primarySwatch: Colors.red,
          iconTheme: IconThemeData(color: Colors.white),
          fontFamily: 'RobotoCondensed'),
      debugShowCheckedModeBanner: false,
    );
  }
}
