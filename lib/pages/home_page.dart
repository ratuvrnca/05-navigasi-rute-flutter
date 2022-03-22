import 'package:flutter/material.dart';
import 'package:navigation_rute_flutter/models/item.dart';
import 'package:navigation_rute_flutter/widgets/listview.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Item> items = [
    Item(name: 'Gula', stock: 10, price: 12000),
    Item(name: 'Garam', stock: 40, price: 3000),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('Shopping List - 2031710119 Ratu Veronica'),
          backgroundColor: Colors.pink),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListViewBuilder(items: items),
      ),
    );
  }
}
