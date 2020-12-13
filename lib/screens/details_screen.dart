import 'package:flutter/material.dart';
import '../widgets/main_drawer.dart';


class DetailScreen extends StatelessWidget {

  static const routeName = '/detailscreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("helllo")),
      drawer: MainDrawer(),
      body: 
      Center(
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.center,

        children: <Widget>[
          
            Text('This is detail page',style: TextStyle(fontSize: 22),),
        FloatingActionButton(
            child: Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.pop(context);
            },
          )
        ],
        )
      
    ));
  }
}
