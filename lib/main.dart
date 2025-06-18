import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Iced Coffee'),
        backgroundColor: Colors.brown[300],
      ),
      body: Center(
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         crossAxisAlignment: CrossAxisAlignment.center,
           children: [
           Text('Text 1', style: TextStyle(fontSize: 24,
             fontWeight: FontWeight.bold,
           ),
           ),
             Text('Text 2', style: TextStyle(fontSize: 30,
               fontWeight: FontWeight.bold,
             ),
             ),
             Text('Text 3', style: TextStyle(fontSize: 40,
               fontWeight: FontWeight.bold,
               fontStyle: FontStyle.italic,
             ),
             ),
         ],
       ),
      ),
      backgroundColor: Colors.brown[200],
    ),
  ));
}

