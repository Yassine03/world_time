import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};

  @override
  Widget build(BuildContext context) {
    //this is where we get the arguments sent by /location to /home

    data = ModalRoute.of(context).settings.arguments;
    print('data: $data');

    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0.0, 120.0, 0.0, 0.0),
            child: Column(
              children: <Widget>[
                TextButton.icon(
                    onPressed: () {
                      Navigator.pushNamed(context, '/location');
                    },
                    icon: Icon(Icons.edit_location),
                    label: Text('Edit location'),
                ),
                SizedBox(height:20.0),
                //2 Items next to each other (Flag + Location text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      data['location'],
                      style: TextStyle(
                        fontSize: 28.0,
                        letterSpacing: 3.0,
                      ),
                    )

                  ],

                ),
                SizedBox(height: 20.0),
                Text(
                  data['time '],
                  style: TextStyle(
                    fontSize: 28.0,
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}