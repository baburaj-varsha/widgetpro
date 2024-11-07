import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title:const Center(child: Text('Buttons'))),
        
        body: Center (
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Text Button
              TextButton(
                onPressed: () {
                  
                },
                child: const Text("Text Button"),
              ),
              
              const SizedBox(height: 10),

              // Elevated Button
              ElevatedButton(
                onPressed: () {
                  
                },
                child: const Text("Elevated Button"),
              ),

              const SizedBox(height: 10),

              // Outlined Button
              OutlinedButton(
                onPressed: () {
                  
                },
                child: const Text("Outlined Button"),
              ),

              const SizedBox(height: 10),

              // Gesture Detector
              GestureDetector(
                onTap: () {
                
                },
                child: Container(
                  padding: const EdgeInsets.all(12.0),
                  color: Colors.blueAccent,
                  child: const Text("Gesture Detector", style: TextStyle(color: Colors.white)),
                ),
              ),

              const SizedBox(height: 10),

              // Icon Button
              IconButton(
                icon: const Icon(Icons.favorite),
                onPressed: () {
                  
                },
              ),

              const SizedBox(height: 10),

              
              FloatingActionButton(
                onPressed: () {
                  
                },
                child: const Icon(Icons.add),
              ),
            ],
          ),
        ),
      ),
    );
  }
}