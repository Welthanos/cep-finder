import 'package:cep_finder/screens/cepPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CEP Finder',
      home: CepPage(
        title: SizedBox(
          height: 60,
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
