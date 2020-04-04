import 'package:flutter/material.dart';
import 'package:gift/src/models/Gift.dart';
import 'package:gift/widgets/OneGiftCol.dart';

class NewGiftGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 20),
        height: MediaQuery.of(context).size.height,
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
                children: gifts.map((Gift i) {
                  return OneGiftCol(gift: i);
                }).toList(),
                crossAxisCount: 2,
              ),
            )
          ],
        ));
  }
}
