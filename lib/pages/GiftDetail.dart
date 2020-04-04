import 'package:flutter/material.dart';
import 'package:gift/src/models/Gift.dart';
import 'package:gift/src/utils/constants.dart';
import 'package:gift/widgets/GeneralWidget.dart';

class GiftDetail extends StatelessWidget {
  GiftDetail({this.gift});
  final Gift gift;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Stack(children: <Widget>[
      Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(gift.giftImage),
                fit: BoxFit.cover,
                colorFilter: ColorFilter.mode(
                    Colors.red.withOpacity(0.2), BlendMode.darken))),
      ),
      Align(
        alignment: Alignment.bottomRight,
        child: Container(
          alignment: Alignment.bottomRight,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                gift.name,
                textAlign: TextAlign.right,
                style: Theme.of(context).textTheme.display3.copyWith(
                    fontWeight: FontWeight.w500,
                    color: Colors.redAccent.shade400),
              ),
              (gift.type == GiftType.Free)
                  ? buildGiftTypeTag(text: 'Free')
                  : (gift.type == GiftType.Paid)
                      ? buildGiftTypeTag(
                          text: CURRENCY + ' ' + gift.price.toString())
                      : buildGiftTypeTag(text: 'Exchange')
            ],
          ),
        ),
      ),
    ])
//      CustomScrollView(slivers: [
//        SliverAppBar(
//          expandedHeight: 250,
//          // title: Text(gift.name),
//          flexibleSpace: FlexibleSpaceBar(
//            title: Text(gift.name),
//            background: Hero(
//                tag: gift.name,
//                child: Image.asset(
//                  gift.giftImage,
//                )),
//          ),
//        ),
//        SliverList(
//          delegate: SliverChildListDelegate([
//            ListTile(
//              title: Text(gift.type.toString()),
//            ),
//            ListTile(
//              title: Text(gift.price.toString()),
//            ),
//            ListTile(
//              title: Text(gift.descriptions),
//            ),
//          ]),
//        ),
//      ]),
        );
  }
}
