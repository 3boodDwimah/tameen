import 'package:flutter/material.dart';

import 'Ui/Home/homepage.dart';
import 'Ui/NavBar/pages/navbar.dart';
import 'Ui/SplachScreen/pages/splachscreen.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Flutter Demo',
    theme: ThemeData(
      // primarySwatch: Colors.blue,
    ),
    home:  HomePage(),
  ));
}

// flutter pub get && flutter pub run build_runner build --delete-conflicting-outputs

