import 'package:flutter/material.dart';
import 'package:navigation_rute_flutter/models/item.dart';
import 'package:navigation_rute_flutter/pages/item_page.dart';
import 'package:navigation_rute_flutter/widgets/card.dart';

class ListViewBuilder extends StatelessWidget {
  const ListViewBuilder({
    Key? key,
    required this.items,
  }) : super(key: key);

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, ItemPage.routeName, arguments: item);
          },
          child: CardWidget(item: item),
        );
      },
    );
  }
}
