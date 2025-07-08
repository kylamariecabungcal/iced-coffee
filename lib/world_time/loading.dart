import 'package:flutter/material.dart';
import 'package:ice_coffee/world_time/world_time_services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {


  void setupWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'Batangas',
     // flag: '🇵🇭',
      url: 'Asia/Manila',
    );

    await instance.getTime();

    Navigator.pushReplacementNamed(
      context, '/home',
      arguments: {
        'location': instance.location,
        'time': instance.time,
        'isDaytime': instance.isDaytime, // ✅ ADD this line
      },
    );

  }


  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[50],
      body: Center(
        child:  SpinKitSpinningLines(
          color: Colors.black,
          size: 100,
        ),
      ),
    );
  }
}
