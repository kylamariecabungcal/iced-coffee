import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String url;
  bool isDaytime = true; // ✅ ADD this line

  WorldTime({
    required this.location,
    required this.url,
  });

  Future<void> getTime() async {
    try {
      final uri = Uri.parse('https://timeapi.io/api/time/current/zone?timeZone=$url');
      Response response = await get(uri);

      if (response.statusCode == 200) {
        Map data = jsonDecode(response.body);
        DateTime now = DateTime.parse(data['dateTime']);

        isDaytime = now.hour >= 6 && now.hour < 18; // ✅ ADD this line
        time = DateFormat('EEEE, MMMM d, y - h:mm a').format(now);
        print(time);
      }
    } catch (e) {
      time = 'caught error: $e';
      print(time);
    }
  }
}

