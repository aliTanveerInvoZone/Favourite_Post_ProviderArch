import 'package:flutter/material.dart';
import 'package:my_app/Models/FavModel.dart';
import 'package:provider/provider.dart';

class Screen2 extends StatelessWidget {
  final title;
  Screen2(this.title);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Column(
        children: [
          Expanded(
              flex: 1,
              // takes 30% of available width
              child: Consumer<FavModel>(builder: (context, cart, child) {
                return ListView.builder(
                    itemCount: cart.totalFav.length,
                    itemBuilder: (context, index) {
                      return Column(children: [
                        Card(
                          child: ListTile(
                              title: Row(children: [
                            Text(cart.totalFav[index]["label"]),
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
      ),
    );
  }
}
