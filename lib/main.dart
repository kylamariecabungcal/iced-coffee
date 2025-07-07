
import 'package:flutter/material.dart';
import 'package:ice_coffee/pages/AddCoffee.dart';
import 'package:ice_coffee/pages/Dashboard.dart';
import 'package:ice_coffee/pages/ListItems.dart';
import 'package:ice_coffee/world_time/choose_location.dart';
import 'package:ice_coffee/world_time/home.dart';
import 'package:ice_coffee/world_time/loading.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/',
      routes: {
        '/dashboard' : (context) => Dashboard(),
        '/list' : (context) => Listitems(),
        '/add' : (context) => Addcoffee(),

        //World time
        '/' : (context) => Loading(),
        '/home' : (context) => Home(),
        '/location' : (context) => ChooseLocation(),
      },

  ));
}