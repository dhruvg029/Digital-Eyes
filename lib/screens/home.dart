import 'package:flutter/material.dart';

import './details_screen.dart';

import 'package:my_app/widgets/main_drawer.dart';
import 'package:my_app/widgets/main_drawer.dart';

class Home extends StatelessWidget {
  static const routeName = '/home';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("helllo")),
      drawer: MainDrawer(),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'This is home page',
            style: TextStyle(fontSize: 22),
          ),
          RaisedButton(
            child: Text('go to details'),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => DetailScreen()));
            },
          )
        ],
      )),
    );
  }
}
