import 'package:flutter/material.dart';
import 'package:gift/src/models/Category.dart';
import 'package:gift/widgets/CategoryProduct.dart';

class CategoryPage extends StatefulWidget {
  CategoryPage({this.category});
  final Category category;
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage>
    with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    _controller = AnimationController(vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          child: Column(
        children: <Widget>[
          CategoryProduct(
            category: widget.category,
          ),
        ],
      )),
    );
  }
}
