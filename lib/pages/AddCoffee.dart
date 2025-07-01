import 'package:flutter/material.dart';

class Addcoffee extends StatefulWidget {
  const Addcoffee({super.key});

  @override
  State<Addcoffee> createState() => _AddcoffeeState();
}

class _AddcoffeeState extends State<Addcoffee> {
  final _formkey = GlobalKey<FormState>();
  String _name = '';
  String _size = '';
  double _amount = 0.0;

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
      body: Container(
        margin: const EdgeInsets.all(20),
        child: Form(
          key: _formkey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                'Add Coffee',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 10),

              // Name Field
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Name',
                    hintText: 'Ex. Caramel',
                    labelStyle: const TextStyle(color: Colors.black),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please add a name';
                    }
                    return null;
                  },
                ),
              ),

              // Size Field
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Size',
                    hintText: 'Ex. Small',
                    labelStyle: const TextStyle(color: Colors.black),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please add a size';
                    }
                    return null;
                  },
                ),
              ),

              // Amount Field
              Container(
                margin: const EdgeInsets.symmetric(vertical: 8),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Amount',
                    hintText: 'Ex. 100',
                    labelStyle: const TextStyle(color: Colors.black),
                    border: const OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.brown),
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please add an amount';
                    }
                    return null;
                  },
                ),
              ),

              // Save Button
              Container(
                margin: const EdgeInsets.symmetric(vertical: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    ElevatedButton(
                      onPressed: () {
                        if (_formkey.currentState!.validate()) {
                          print('The form is Validated');
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.brown[200],
                      ),
                      child: const Text('Save'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
