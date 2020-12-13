import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:my_app/main.dart';
import 'package:my_app/screens/home.dart';



class Profile extends StatelessWidget {
  static const routeName = '/profile';

  final FlutterTts flutterTts = FlutterTts();

 
  @override
  Widget build(BuildContext context) {
  Future _speak() async{
    await flutterTts.setLanguage("en-IN");
    await flutterTts.setPitch(1);
    // await flutterTts.setVolume(100);
    await flutterTts.speak("hello");

  }
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: RaisedButton(
            child: Text("press this button to say hello"),
            onPressed: () => _speak(),
  

          ),
        ), 
      ),
    );
  }
}


// Center(
//         child:  Column(
//           mainAxisAlignment: MainAxisAlignment.center,

//         children: <Widget>[
          
//             Text('This is form page',style: TextStyle(fontSize: 22),),
//         FloatingActionButton(
//             child: Icon(Icons.arrow_back),
//             onPressed: (){
//               Navigator.of(context).pop();
              
//               Navigator.of(context).pushNamed(Home.routeName);
//             },
//           )
//         ],
//         )
//       ),