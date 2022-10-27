import 'package:flutter/material.dart';
import 'package:fruitApp/pages/productPage.dart';

import 'pages/home_pag.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.green,),
      home:Home_Page(),
    );
  }
}
