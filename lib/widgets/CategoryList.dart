import 'package:flutter/material.dart';
import 'package:gift/src/models/Category.dart';
import 'package:gift/widgets/CategoryCol.dart';

class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height / 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Categories',
              style:
                  Theme.of(context).textTheme.display1.copyWith(fontSize: 20),
            ),
            SizedBox(height: 10),
            Expanded(
              child: GridView.count(
                children: categories.map((Category i) {
                  return CategoryCol(category: i);
                }).toList(),
                crossAxisCount: 4,
              ),
            )
          ],
        ));
  }
}
