import 'package:flutter/material.dart';
import 'package:ice_coffee/world_time/world_time_services.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  List<WorldTime> locations = [
    WorldTime(location: 'London', url: 'Europe/London'),
    WorldTime(location: 'Berlin', url: 'Europe/Berlin'),
    WorldTime(location: 'Cairo', url: 'Africa/Cairo'),
    WorldTime(location: 'Nairobi', url: 'Africa/Nairobi'),
    WorldTime(location: 'Chicago', url: 'America/Chicago'),
    WorldTime(location: 'New York', url: 'America/New_York'),
    WorldTime(location: 'Seoul', url: 'Asia/Seoul'),
    WorldTime(location: 'Jakarta', url: 'Asia/Jakarta'),
    WorldTime(location: 'Tokyo', url: 'Asia/Tokyo'),
    WorldTime(location: 'Beijing', url: 'Asia/Shanghai'),
    WorldTime(location: 'Sydney', url: 'Australia/Sydney'),
    WorldTime(location: 'Bangkok', url: 'Asia/Bangkok'),
    WorldTime(location: 'Philippines', url: 'Asia/Manila'),
    WorldTime(location: 'Moscow', url: 'Europe/Moscow'),
    WorldTime(location: 'Paris', url: 'Europe/Paris'),
    WorldTime(location: 'Madrid', url: 'Europe/Madrid'),
    WorldTime(location: 'Rome', url: 'Europe/Rome'),
    WorldTime(location: 'Dubai', url: 'Asia/Dubai'),
    WorldTime(location: 'Singapore', url: 'Asia/Singapore'),
  ];

  void updateTime(index) async {
    WorldTime instance = locations[index];
    await instance.getTime();


    if (!mounted) return;
    //navigate to home screen
    Navigator.pop(context, {
      'location': instance.location,
      'time': instance.time,
      'isDaytime': instance.isDaytime, // ✅ ADD this line
    });

  }


  @override
  Widget build(BuildContext context) {
    print('build function ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
      title: Text('choose A location'),
      centerTitle: true,
        elevation: 0 ,
      ),
      body: ListView.builder(
         itemCount: locations.length ,
        itemBuilder: (context, index){
           return Card(
           child: ListTile(
             onTap: (){
               updateTime(index);
             },
             title: Text(locations[index].location),
           ),
           );
        }
      ),
    );
  }
}
