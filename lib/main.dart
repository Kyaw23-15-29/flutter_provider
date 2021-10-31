import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test2/pages/first_page.dart';
import 'package:provider_test2/provider/fruit_provider.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<FruitData>(create: (_) => FruitData())
      ],
      child: MaterialApp(
        title: 'Provider Test',
        home: FirstPage(),
      ),
    );
  }
}
