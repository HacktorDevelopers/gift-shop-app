import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift/pages/category_page.dart';
import 'package:gift/src/models/Category.dart';
import 'package:gift/src/models/page_data.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:provider/provider.dart';

class CategoryCol extends StatelessWidget {
  CategoryCol({this.category});
  final Category category;

  @override
  Widget build(BuildContext context) {
    PageNotifier _pageNotifier = Provider.of<PageNotifier>(context);
    return InkWell(
      onTap: () => _pageNotifier.changeScreen(
          context,
          PageData(
              page_title: 'Product Detail',
              screen: CategoryPage(
                category: category,
              ))),
      child: Container(
        margin: const EdgeInsets.all(2),
//        padding: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Material(
          elevation: 2,
          borderRadius: BorderRadius.all(Radius.circular(20)),
          shadowColor: Colors.red,
          child: Stack(
            children: <Widget>[
              Hero(
                tag: category.name,
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.red,
                      image: DecorationImage(
                          colorFilter:
                              ColorFilter.mode(Colors.red, BlendMode.darken),
                          image: AssetImage(category.image),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Container(
                padding: const EdgeInsets.all(2),
                alignment: Alignment.bottomCenter,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      category.name,
                      style: Theme.of(context)
                          .textTheme
                          .display1
                          .copyWith(fontSize: 15, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
