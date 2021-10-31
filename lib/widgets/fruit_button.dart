import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test2/provider/fruit_provider.dart';

class FruitButton extends StatelessWidget {
  late String fruitName;
  FruitButton(this.fruitName);
  @override
  Widget build(BuildContext context) {
    return TextButton(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blue),
        ),
        onPressed: () {
          Provider.of<FruitData>(context, listen: false)
              .favoriteFruit(fruitName);
        },
        child: Text(fruitName));
  }
}
