import 'package:flutter/material.dart';


class Dashboard  extends StatelessWidget {
  const Dashboard  ({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const CoffeeJournalHome(),
    );
  }
}

class CoffeeJournalHome extends StatelessWidget {
  const CoffeeJournalHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(), // empty space at the top
            const Center(
              child: Text(
                '"Coffee Journal"',
                style: TextStyle(
                  fontSize: 45,
                  color: Colors.brown,
                  fontStyle: FontStyle.italic,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 40),
              child: OutlinedButton(
                onPressed: () {
                  // Add button action here
                },
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.black, width: 2),
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40, vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text(
                  'LetsBrew!',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}