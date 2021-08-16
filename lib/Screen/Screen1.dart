import 'package:flutter/material.dart';

import 'package:my_app/Models/FavModel.dart';
import 'package:provider/provider.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
            flex: 1,
            // takes 30% of available width
            child: Consumer<FavModel>(builder: (context, cart, child) {
              return ListView.builder(
                  itemCount: cart.Items.length,
                  itemBuilder: (context, index) {
                    return Column(children: [
                      Card(
                        child: ListTile(
                            title: Row(children: [
                          Text(cart.Items[index]["label"]),
                          IconButton(
                              onPressed: () {
                                cart.addFav(cart.Items[index]);
                              },
                              icon: new Icon(!cart.Items[index]["Fav"]
                                  ? Icons.favorite_outline
                                  : Icons.favorite))
                        ])),
                      ),
                      Container(
                        height: 200,
                        decoration: BoxDecoration(
                          color: const Color(0xff7c94b6),
                          image: const DecorationImage(
                            image: NetworkImage(
                                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ]);
                  });
            })),
      ],
    );
  }
}
