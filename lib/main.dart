import 'package:fluter_diseno/page/basicos_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Diseño',
      initialRoute: "basico",
      routes: {
        'basico': (BuildContext context) => BasicoPage(),
      },
    );
  }
}
