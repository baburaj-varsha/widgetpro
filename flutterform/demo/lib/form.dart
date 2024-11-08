import 'package:flutter/material.dart';

class MyForm extends StatelessWidget {
  const MyForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('login form') ,
      ),
      body: Form(child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              labelText: 'username',
              hintText: 'username',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              
            ),
             
            
          ),
          const SizedBox(
            height: 16.0,
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: 'password',
              hintText: 'password',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10.0),
              )
              
            ),
            ),
             const SizedBox(
              height: 16.0,
            
            ),
             ElevatedButton(onPressed:(){}, child: const Text('submit'))

          
          
        ],
        
        
      )),
    );
  }
}