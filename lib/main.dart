import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:lottie/lottie.dart';

import './screens/getting_started_screen.dart';

import 'screens/home.dart';
import 'screens/details_screen.dart';
import 'screens/Profile.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Guidder',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Splash(),
      routes: {
        Home.routeName: (ctx) => Home(),
        DetailScreen.routeName: (ctx) => DetailScreen(),
        Profile.routeName: (ctx) => Profile(),
      },
    );
  }
}



class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 6,
      navigateAfterSeconds: new GettingStartedScreen(),
      title: new Text('Welcome',textScaleFactor: 2,),
      image: Image.asset('assets/images/blind.jpg'),
      loadingText: Text("Loading"),
      photoSize: 200.0,
      
      loaderColor: Colors.blue,
    );
  }
}