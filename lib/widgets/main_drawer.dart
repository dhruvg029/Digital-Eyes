import 'package:flutter/material.dart';
import 'package:my_app/screens/details_screen.dart';
import 'package:my_app/screens/home.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(20),
            color: Theme.of(context).primaryColor,
            child: Center(
                child: Column(
              children: <Widget>[
                Container(
                  width: 100,
                  height: 100,
                  margin: EdgeInsets.only(top: 30),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: AssetImage("assets/images/image1.jpg"),
                        fit: BoxFit.fill),
                  ),
                ),
                Text(
                  'Nitish Kumar',
                  style: TextStyle(fontSize: 22, color: Colors.white),
                ),
                Text(
                  'nitishk12c@gmail.com:',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )),
          ),
           ListTile(
            leading: Icon(Icons.house),
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              print('hello');
              Navigator.of(context).pushNamed(Home.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: () {
              Navigator.of(context).pop();
              print('hello');
              Navigator.of(context).pushNamed(DetailScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text(
              'Settings',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
          ListTile(
            leading: Icon(Icons.star),
            title: Text(
              'feedback',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            onTap: null,
          ),
        ],
      ),
    );
  }
}
