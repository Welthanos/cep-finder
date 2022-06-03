import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  final Function(String) getData;
  const SearchBar({Key? key, required this.getData}) : super(key: key);
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  InputDecoration fieldDecor = InputDecoration(
    filled: true,
    fillColor: const Color.fromARGB(255, 97, 97, 97),
    prefixIcon: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Icon(Icons.search, color: Color.fromARGB(255, 165, 165, 165)),
    ),
    labelText: ' Procurar endereço ...',
    hintText: 'Ex.: 49088280',
    hintStyle: const TextStyle(color: Color.fromARGB(255, 180, 180, 180)),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: const TextStyle(
      color: Color.fromARGB(255, 180, 180, 180),
    ),
    contentPadding: const EdgeInsets.all(0),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        width: 0,
        style: BorderStyle.none,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all( 18),
      child: TextField(
        onChanged: (text) {
          if (text.length == 8) {
            widget.getData(text);
          }
        },
        style: const TextStyle(
          color: Color.fromARGB(255, 165, 165, 165),
        ),
        cursorColor: const Color.fromARGB(255, 165, 165, 165),
        decoration: fieldDecor,
      ),
    );
  }
}
