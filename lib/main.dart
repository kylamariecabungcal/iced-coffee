import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Iced Coffee'),
        backgroundColor: Colors.brown[300],
      ),
      body: Column(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              children:const [
                Text('Name:',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('Kyla Cabungcal',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
    ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            child: Row(
              children:[
                Text('Age: ',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                Text('21 years old',
                  style: TextStyle(fontSize: 18),
                ),
              ],
            ),
            ),
              Container(
                margin: EdgeInsets.fromLTRB(5,4,3,2),
                padding: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Row(
                  children:[
                    Text('Gender: ',
                      style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                    ),
                    Text('Female',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
        ],
      ),
    ),
  ));
}

