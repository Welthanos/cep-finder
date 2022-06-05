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
    fillColor: const Color.fromARGB(255, 238, 238, 238),
    prefixIcon: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Icon(Icons.search, color: Color.fromARGB(255, 139, 139, 139)),
    ),
    labelText: ' Procurar endereço ...',
    hintText: 'Ex.: 49088280',
    hintStyle: const TextStyle(color: Color.fromARGB(255, 158, 158, 158)),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: const TextStyle(
      color: Color.fromARGB(255, 158, 158, 158),
    ),
    contentPadding: const EdgeInsets.all(0),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 139, 139, 139),
        width: 2,
      ),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(30),
      borderSide: const BorderSide(
        color: Color.fromARGB(255, 139, 139, 139),
        width: 2,
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18),
      child: TextField(
        onChanged: (text) {
          if (text.length == 8) {
            widget.getData(text);
          }
        },
        style: const TextStyle(
          color: Color.fromARGB(255, 139, 139, 139),
        ),
        cursorColor: const Color.fromARGB(255, 139, 139, 139),
        decoration: fieldDecor,
      ),
    );
  }
}
