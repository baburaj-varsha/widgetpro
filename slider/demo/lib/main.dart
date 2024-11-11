import 'package:flutter/material.dart';



void main() => runApp(const SliderApp());

class SliderApp extends StatelessWidget {
  const SliderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SliderExample(),
    );
  }
}
class SliderExample extends StatefulWidget {
  const SliderExample({super.key});

  @override
  State<SliderExample> createState() => _SliderExampleState();
}
class _SliderExampleState extends State<SliderExample> {
  double _sliderValue = 40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Slider(
        value: _sliderValue,
        max: 100,
        divisions: 8,
        label: _sliderValue.roundToDouble().toString(),
        onChanged: (double value) {
          setState(() {
            _sliderValue = value;
          });
        },
      ),
    );
  }
}
