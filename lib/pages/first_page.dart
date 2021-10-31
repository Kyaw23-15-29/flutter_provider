import 'package:flutter/material.dart';
import 'package:provider_test2/pages/second_page.dart';
import 'package:provider_test2/provider/fruit_provider.dart';
import 'package:provider_test2/widgets/fruit_button.dart';
import 'package:provider/provider.dart';

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            'My Favorite Fruit is ${Provider.of<FruitData>(context).fruit}'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            FruitButton('Apple'),
            FruitButton('Orange'),
            FruitButton('Kiwi'),
            TextButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) {
                    return SecondPage();
                  }),
                );
              },
              child: Text('Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
