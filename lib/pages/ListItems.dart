
import 'package:flutter/material.dart';
import 'package:ice_coffee/pages/ItemCard.dart';
import 'Coffees.dart';

class Listitems extends StatefulWidget {
  const Listitems({super.key});

  @override
  State<Listitems> createState() => _ListitemsState();
}

class _ListitemsState extends State<Listitems> {

  List<Coffees> coffees = [
    Coffees(name: ' Caramel', size: 'Demi', amount: 110),
    Coffees(name: ' Latte', size: 'Short', amount: 120),
    Coffees(name: ' Mocha', size: 'Tall', amount: 130),
    Coffees(name: ' Espresso', size: 'Grande', amount: 140),
    Coffees(name: ' Americano', size: 'Grande', amount: 140),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.brown[100],
        title: const Text(
          'Coffee',
          style: TextStyle(
            color: Colors.black,
            fontStyle: FontStyle.italic,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.all(12),
              child: Text(
                'MY COFFEE',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.brown,
                ),
              ),
            ),
            ...coffees.map((kape) {
              return Itemcard(coffee: kape);
            }).toList(),
          ],
        ),
      ),
    );
  }
}
