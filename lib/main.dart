import 'package:cep_finder/components/bottomImage.dart';
import 'package:cep_finder/components/searchBar.dart';
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
      home: MyHomePage(
        title: SizedBox(
          height: 60,
          child: Image.asset('assets/images/logo.png'),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        toolbarHeight: 75,
        title: widget.title,
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: const [
            Center(
              child: SizedBox(
                width: 360,
                child: SearchBar(),
              ),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 300,
              width: 350,
            ),
            SizedBox(height: 20),
            BottomImage(),
          ],
        ),
      ),
    );
  }
}
