import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({Key? key}) : super(key: key);
  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  InputDecoration fieldDecor = InputDecoration(
    filled: true,
    fillColor: const Color.fromARGB(255, 216, 216, 216),
    prefixIcon: const Padding(
      padding: EdgeInsets.only(left: 10),
      child: Icon(
        Icons.search,
        color: Color.fromARGB(255, 139, 139, 139),
      ),
    ),
    labelText: ' Procurar endereço ...',
    hintText: 'Ex.: 49088280',
    hintStyle: const TextStyle(color: Color.fromARGB(255, 158, 158, 158),),
    floatingLabelBehavior: FloatingLabelBehavior.never,
    labelStyle: const TextStyle(
      color: Color.fromARGB(255, 158, 158, 158),
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
    return TextField(
      onChanged: ((value) {}),
      style: const TextStyle(
        color: Color.fromARGB(255, 139, 139, 139),
      ),
      cursorColor: const Color.fromARGB(255, 139, 139, 139),
      decoration: fieldDecor,
    );
  }
}
