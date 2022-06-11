import 'package:flutter/material.dart';   


class MapasPage extends StatelessWidget {
  const MapasPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (_ , i) => ListTile(
        leading: Icon(Icons.map, color: Colors.teal),
        title: Text('http://twitter.com'),
        subtitle: Text('ID: 123'),
        trailing: Icon(Icons.keyboard_arrow_right),
        onTap: () => print('Abrir algo...'),
      ),
      itemCount: 10,
      );
  }
}