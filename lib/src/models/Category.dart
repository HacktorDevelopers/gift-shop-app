import 'package:flutter/material.dart';

class Category {
  String name;
  int id;
  String image;

  Category({@required this.name, @required this.id, @required this.image});
}

List<Category> categories = List.generate(20, (index) {
  return Category(
      name: 'Category ' + (index + 1).toString(),
      image: 'assets/images/category.png',
      id: index + 1);
});
