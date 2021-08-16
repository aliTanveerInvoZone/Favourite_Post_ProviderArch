import 'package:flutter/material.dart';

class FavModel extends ChangeNotifier {
  final List Items = [
    {
      "id": 0,
      "label": "Post 1 ",
      "Fav": false,
    },
    {
      "id": 1,
      "label": "Post 2 ",
      "Fav": false,
    },
    {
      "id": 2,
      "label": "Post 3",
      "Fav": false,
    },
    {
      "id": 3,
      "label": "post 4 ",
      "Fav": false,
    },
    {
      "id": 4,
      "label": "post 5",
      "Fav": false,
    }
  ];

  List get items => Items;

  List get totalFav =>
      Items.where((element) => element["Fav"] == true).toList();

  void addFav(addedItem) {
    Items.asMap().forEach((key, value) {
      if (key == addedItem["id"]) {
        if (value["Fav"] == true) {
          Items[key]["Fav"] = false;
        } else {
          Items[key]["Fav"] = true;
        }
      }
    });

    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }

  void removeFav(item) {
    print(item);
    // This call tells the widgets that are listening to this model to rebuild.
    notifyListeners();
  }
}
