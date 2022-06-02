import 'dart:async';
import 'package:cep_finder/screens/cep_page.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const CepPage()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "assets/images/splash.png",
        fit: BoxFit.fill,
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}