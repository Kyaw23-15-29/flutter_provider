import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test2/provider/fruit_provider.dart';

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Provider.of<FruitData>(context).fruit),
      ),
    );
  }
}
