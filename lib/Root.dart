import 'package:flutter/material.dart';
import 'package:my_app/Models/FavModel.dart';
import 'package:my_app/Screen/Screen2.dart';
import 'package:my_app/Screen/Screen1.dart';
import 'package:provider/provider.dart';

class Root extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var favModel = Provider.of<FavModel>(context);

    return Scaffold(
        appBar: AppBar(title: const Text('Provider '), actions: [
          Center(
            child: Text(favModel.totalFav.length.toString()),
          ),
          IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => Screen2("Favourites")),
                );
              },
              icon: Icon(Icons.favorite_rounded))
        ]),
        body: Screen1());
  }
}
