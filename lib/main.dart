import 'package:flutter/material.dart';

import 'screens/view/home_screen.dart';

void main() {
  runApp(
    MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {'/': (context) => HomeScreen()}),
  );
}
