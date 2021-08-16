import 'package:flutter/material.dart';
import 'package:my_app/Root.dart';
import 'package:my_app/Models/FavModel.dart';
import 'package:provider/provider.dart';

// When Dart is running the application, it calls to the main() function
main() => runApp(
      ChangeNotifierProvider(
          create: (context) => FavModel(),
          child: MaterialApp(
            title: 'Provider Example',
            home: Root(),
          )),
    );
