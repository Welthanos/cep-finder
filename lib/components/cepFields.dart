import 'package:flutter/material.dart';

class CepFields extends StatelessWidget {
  const CepFields({Key? key, required this.text}) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.black,
      elevation: 5,
      borderRadius: BorderRadius.circular(30),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(30),
        child: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color.fromARGB(255, 77, 77, 77),
              Color.fromARGB(255, 189, 189, 189),
            ],
          )),
          width: MediaQuery.of(context).size.width * 0.86,
          height: MediaQuery.of(context).size.width * 0.1,
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
