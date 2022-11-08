import 'package:flutter/material.dart';

import 'package:splashscreen/splashscreen.dart';

import './home_screen.dart';

class Splashscreen extends StatefulWidget {
  @override
  _SplashscreenState createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 4,
        navigateAfterSeconds: HomeScreen(),
        backgroundColor: Colors.blueAccent,
        image: Image.asset('assets/v1.png'),
        useLoader: true,
        loaderColor: Colors.black,
        loadingText: Text(
          'Loading. . .',
          style: TextStyle(
            color: Colors.black,
            fontSize: 12,
          ),
        ));
  }
}
