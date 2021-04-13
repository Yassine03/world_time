import 'package:http/http.dart';
import 'dart:convert';

import 'package:intl/intl.dart';

class WorldTime {
  String location; // location name for the UI
  String time; // Time at that location
  String flag; // URL to an asset flag icon
  String url; // URL for API endpoint

  WorldTime({this.flag, this.location, this.url});

  Future<void> getTime() async {
    // make the request
    try {
      Response response = await get(
          Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
      Map data = jsonDecode(response.body);

      // get properties from data
      String datetime = data['datetime'];
      String offset = data['utc_offset'].substring(1, 3);

      // create DateTime object
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));

      // set the time property
      time = DateFormat.jm().format(now);
    } catch (e) {
      print('error: $e');

    }


  }

}