import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gift/pages/GiftDetail.dart';
import 'package:gift/src/models/Gift.dart';
import 'package:gift/src/models/page_data.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:gift/src/utils/constants.dart';
import 'package:provider/provider.dart';

import 'GeneralWidget.dart';

class OneGiftCol extends StatelessWidget {
  OneGiftCol({this.gift});
  final Gift gift;

  @override
  Widget build(BuildContext context) {
    PageNotifier _pageNotifier = Provider.of<PageNotifier>(context);
    return InkWell(
      onTap: () => _pageNotifier.changeScreen(
          context,
          PageData(
              page_title: 'Product Detail', screen: GiftDetail(gift: gift))),
//          Navigator.of(context).push(
//          MaterialPageRoute(builder: (context) => GiftDetail(gift: gift))),
      child: Container(
        margin: const EdgeInsets.all(5),
        decoration: BoxDecoration(
          color: Colors.red.withOpacity(0.2),
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
        child: Material(
          borderRadius: BorderRadius.all(Radius.circular(20)),
          elevation: 2,
          child: Stack(
            children: <Widget>[
              Hero(
                tag: gift.name,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.red.withOpacity(0.2), BlendMode.darken),
                          image: NetworkImage(gift.giftImage[0]),
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  alignment: Alignment.centerLeft,
                ),
              ),
              Container(
                alignment: Alignment.bottomCenter,
                width: 120,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Text(
                      gift.name,
                      style: Theme.of(context)
                          .textTheme
                          .display4
                          .copyWith(fontSize: 25, color: Colors.white),
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
            ],
          ),
        ),
      ),
    );
  }
}
