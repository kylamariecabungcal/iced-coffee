
import 'package:flutter/material.dart';
import 'Coffees.dart';

class Itemcard extends StatelessWidget {
  final Coffees coffee;

  const Itemcard({
    super.key,
    required this.coffee,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 3, horizontal: 16.0),
      child: Card(
        color: Colors.brown[50],
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Left side: name and size
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    coffee.name,
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Size: ${coffee.size}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey[700],
                    ),
                  ),
                ],
              ),
              Text(
                '₱${coffee.amount.toString()}',
                style: const TextStyle(
                  fontSize: 16,
                  color: Colors.brown,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
