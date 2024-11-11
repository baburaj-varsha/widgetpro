import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<MyHomePage> {
  bool first = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Checkbox'),
        ),
        body: Row(children: [
          Row(
            children: <Widget>[
              Checkbox(
                value: first,
                onChanged: (bool? value) {
                  setState(() {
                    first = value!;
                  });
                },
              ),
            ],
          )
        ]),
      ),
    );
  }
}
