import 'package:flutter/material.dart';
import 'package:world_time/pages/choose_location.dart';
import 'package:world_time/pages/home.dart';
import 'package:world_time/pages/loading.dart';
import 'package:intl/intl.dart';
import 'package:world_time/services/world_time.dart';


void main() {
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/': (context) => Loading(),
      '/home': (context) => Home(),
      '/location': (context) => ChooseLocation(),
    },
  ));

 // WorldTime inst = WorldTime(location: 'Berlin', flag: 'germany.png', url : 'Europe/Berlin');
}


