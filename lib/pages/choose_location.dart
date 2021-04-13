import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {


  void getData() async {

    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'yassine';
    });
    String bio = await Future.delayed(Duration(seconds: 2), () {
      return 'is awesome!';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    print('init state ran');
    getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print('build ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a location'),
        centerTitle: true,
        elevation: 0,
        brightness: Brightness.dark,
      ),
      body: Text('Choose Location screen'),
    );
  }
}
