import 'package:flutter/material.dart';

import 'hello_world.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Images(),
    );
  }
}

class Images extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(30),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        border: Border.all(width: 10, color: Colors.red),
        borderRadius: BorderRadius.all(Radius.circular(8)),
        color: Colors.black26,
      ),
      child: Column(
        children: [
          Text('Hello'),
          Text('World'),
        ],
      ),
    );
  }
}
