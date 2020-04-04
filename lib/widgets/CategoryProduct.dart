import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:gift/pages/GiftDetail.dart';
import 'package:gift/src/models/Category.dart';
import 'package:gift/src/models/Gift.dart';
import 'package:gift/src/models/page_data.dart';
import 'package:gift/src/notifiers/page_notifier.dart';
import 'package:gift/src/utils/constants.dart';
import 'package:gift/widgets/OneGiftCol.dart';
import 'package:provider/provider.dart';
import 'package:search_widget/search_widget.dart';

class CategoryProduct extends StatelessWidget {
  CategoryProduct({this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
          margin: const EdgeInsets.only(top: 20),
          height: MediaQuery.of(context).size.height * (77 / 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                category.name,
                style:
                    Theme.of(context).textTheme.display1.copyWith(fontSize: 20),
              ),
              SearchWidget<Gift>(
                dataList: gifts,
                hideSearchBoxWhenItemSelected: false,
                queryBuilder: (String query, List<Gift> gifts) {
                  return gifts
                      .where((Gift item) =>
                          item.name.toLowerCase().contains(query.toLowerCase()))
                      .toList();
                },
                popupListItemBuilder: (Gift gift) {
                  return ListTile(
                    leading: CircleAvatar(child: Image.asset(gift.giftImage)),
                    title: Text(gift.name),
                    subtitle: Text(CURRENCY + ' ' + gift.price.toString()),
                  );
                },
                onItemSelected: (Gift selectedItem) =>
                    Provider.of<PageNotifier>(context, listen: false)
                        .changeScreen(
                            context,
                            PageData(
                                page_title: selectedItem.name,
                                screen: GiftDetail(
                                  gift: selectedItem,
                                ))),
                noItemsFoundWidget: Center(child: Text('Nothing was foung')),
                selectedItemBuilder:
                    (Gift item, VoidCallback deleteSelectedItem) => null,
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
          )),
    );
  }
}
