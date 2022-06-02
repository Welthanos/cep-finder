import 'package:flutter/material.dart';

class BottomImage extends StatelessWidget {
  const BottomImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Image.asset("assets/images/background.png"),
    );
  }
}
