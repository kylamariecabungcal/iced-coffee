import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {

  void getTime() async {

    Response response = await get(Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=Europe%2FLondon'));
    Map data = jsonDecode(response.body);
    //print(data);

    //get properties from data
    String datetime = data['dateTime']; // or 'datetime' depending on actual API key
    print(datetime); // ← This line displays date and time in terminal
    //String offset = data['offset'];
    //print(offset);

  }

  @override
  void initState() {
    super.initState();
    getTime();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Text('loading screen'),
    );
  }
}
