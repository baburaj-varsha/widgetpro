import 'package:flutter/material.dart';



void main() => runApp(const RadioExampleApp());

class RadioExampleApp extends StatelessWidget {
  const RadioExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Radio Button')),
        body: const Center(
          child: RadioExample(),
        ),
      ),
    );
  }
}
enum SingingCharacter { male, female }

class RadioExample extends StatefulWidget {
  const RadioExample({super.key});

  @override
  State<RadioExample> createState() => _RadioExampleState();
}

class _RadioExampleState extends State<RadioExample> {
  SingingCharacter? _character = SingingCharacter.female;
 @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          title: const Text('male'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.male,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
        ListTile(
          title: const Text('female'),
          leading: Radio<SingingCharacter>(
            value: SingingCharacter.female,
            groupValue: _character,
            onChanged: (SingingCharacter? value) {
              setState(() {
                _character = value;
              });
            },
          ),
        ),
      ],
    );
  }
}