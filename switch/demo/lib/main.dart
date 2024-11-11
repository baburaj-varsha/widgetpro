import 'package:flutter/material.dart';



void main() => runApp(const SwitchApp());

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: Scaffold(
        appBar: AppBar(title: const Text('Switch ')),
        body: const Center(
          child: SwitchExample(),
        ),
      ),
    );
  }
}
class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
  bool color = true;
  @override
  Widget build(BuildContext context) {
    return Switch(
      
      value: color,
      activeColor: Colors.amber.shade500,
      onChanged: (bool V) {
        
        setState(() {
          color = V;
        });
      },
    );
  }
}