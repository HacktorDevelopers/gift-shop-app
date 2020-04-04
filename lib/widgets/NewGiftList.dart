import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gift/src/models/Gift.dart';
import 'package:gift/widgets/OneGiftRow.dart';

class NewGiftList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    print(context);
    return Container(
        margin: const EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Latest New Picks',
              style:
                  Theme.of(context).textTheme.display1.copyWith(fontSize: 20),
            ),
            SizedBox(
              height: 5,
            ),
            CarouselSlider(
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.fastOutSlowIn,
              pauseAutoPlayOnTouch: Duration(seconds: 10),
              enlargeCenterPage: true,
              items: gifts.map((Gift i) {
                return OneGiftRow(gift: i);
              }).toList(),
            )
          ],
        ));
  }
}
