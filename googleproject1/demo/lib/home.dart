import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade600, // Light background color
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Google text
            const Text(
              'Google',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
           const SizedBox(height: 20),
            // Search bar
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: BoxDecoration(
                color: Colors.white, 
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Row(
                children: [
                  Icon(Icons.search, color: Colors.black54),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search or type URL',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  Icon(Icons.mic, color: Colors.black54),
                  SizedBox(width: 10),
                  Icon(Icons.qr_code_scanner, color: Colors.black54),
                ],
              ),
            ),
            const SizedBox(height: 20),
            
            // Additional options
            const Row(mainAxisAlignment: MainAxisAlignment.spaceBetween ,
            
              children: [
                Text('discover-off'),
                
                Expanded(child: Icon(Icons.invert_colors_on_sharp),
                
                )

              ],
              
              
            ),
          ],
        ),
      ),
    );
  }
}