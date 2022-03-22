import 'package:flutter/material.dart';
import 'package:navigation_rute_flutter/pages/home_page.dart';
import 'package:navigation_rute_flutter/pages/item_page.dart';
import 'package:navigation_rute_flutter/models/item.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
      },
      onGenerateRoute: (settings) {
        if (settings.name == ItemPage.routeName) {
          final args = settings.arguments as Item;
          return MaterialPageRoute(
            builder: (context) {
              return ItemPage(
                name: args.name,
                stock: args.stock,
                price: args.price,
              );
            },
          );
        }
        assert(false, '${settings.name}');
        return null;
      },
    );
  }
}
