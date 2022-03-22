import 'package:flutter/material.dart';

class ItemPage extends StatelessWidget {
  const ItemPage(
      {Key? key, required this.name, required this.price, required this.stock})
      : super(key: key);

  static const routeName = '/item';

  final String name;
  final int price;
  final int stock;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            leading: IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
            title: const Text('Shopping List - 2031710119 Ratu Veronica'),
            backgroundColor: Colors.pink),
        body: Container(
          margin: const EdgeInsets.only(top: 250),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ignore: avoid_unnecessary_containers
              Container(
                child: Text(
                  '\nNama Produk : ' +
                      name +
                      '\n Stok : ' +
                      stock.toString() +
                      '\n Harga : ' +
                      '$price',
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
