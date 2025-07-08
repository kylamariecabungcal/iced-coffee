import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = data.isEmpty ? ModalRoute.of(context)?.settings.arguments as Map? ?? {} : data;
    print(data);

    String fullTime = data['time'] ?? '';
    String displayDate = '';
    String displayTime = '';

    if (fullTime.contains(' - ')) {
      List<String> parts = fullTime.split(' - ');
      displayDate = parts[0];
      displayTime = parts[1];
    } else {
      displayTime = fullTime;
    }

    // ✅ Add this part for background image
    String bgImage = (data['isDaytime'] ?? true) ? 'assets/dayy.png' : 'assets/nightt.png';

    return Scaffold(
      // ✅ Background image wrapper
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(bgImage),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0,140,0,60),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  TextButton.icon(
                    onPressed: () async {
                      dynamic result = await  Navigator.pushNamed(context, '/location');
                      setState(() {
                        data = {
                          'time': result['time'],
                          'location': result['location'],
                          'isDaytime': result['isDaytime'], // ✅ add this to preserve state
                        };
                      });
                    },
                    icon: const Icon(Icons.edit_location, color: Colors.black87, size: 25,),
                    label: const Text(
                      'Edit Location',
                      style: TextStyle(color: Colors.blue, fontSize: 25
                      ),
                    ),
                  ),

                  Text(
                    '${data['location'] ?? 'Location'}',
                    style: const TextStyle(
                      fontSize: 40,
                      fontStyle: FontStyle.italic,
                      color: Colors.black87,
                    ),
                  ),

                  Text(
                    displayTime,
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w400,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
