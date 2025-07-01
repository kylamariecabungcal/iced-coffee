
import 'package:flutter/material.dart';
import 'package:ice_coffee/pages/AddCoffee.dart';
import 'package:ice_coffee/pages/Dashboard.dart';
import 'package:ice_coffee/pages/ListItems.dart';


void main() {
  runApp(MaterialApp(
      routes: {
        '/' : (context) => Listitems(),
        '/add' : (context) => Addcoffee(),
      },
  ));
}