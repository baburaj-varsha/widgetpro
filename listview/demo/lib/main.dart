import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ListViewExample(),
    );
  }
}

class ListViewExample extends StatelessWidget {
  const ListViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView Example'),
      ),
      body: ListView(
        children: const <Widget>[
          ListTile(
            title: Text('Item 1'),
            leading: Icon(Icons.chair),
            
          ),
          ListTile(
            title: Text('Item 2'),
            leading: Icon(Icons.chair)
          ),
          ListTile(
            title: Text('Item 3'),
            leading: Icon(Icons.chair)
          ),
          ListTile(
            title: Text('Item 4'),
            leading: Icon(Icons.chair)
          ),
          ListTile(
            title: Text('Item 5'),
            leading: Icon(Icons.chair)
          ),
          ListTile(
            title: Text('Item 6'),
            leading: Icon(Icons.chair)
          ),
          
        ],
      ),
    );
  }
}