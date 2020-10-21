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
    return Center(
      child: _buildGrid(),
    );
  }
}

Widget _buildGrid() => GridView.extent(
      maxCrossAxisExtent: 100,
      padding: EdgeInsets.all(4),
      mainAxisSpacing: 4,
      crossAxisSpacing: 4,
      children: _buildGridTileList(30),
    );

List<Container> _buildGridTileList(int count) => List.generate(
      count,
      (i) => Container(
        child: Text(
          'hello$i',
          style: TextStyle(color: Colors.white, fontSize: 12),
        ),
      ),
    );
