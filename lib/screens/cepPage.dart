import 'dart:convert';

import 'package:cep_finder/components/bottomImage.dart';
import 'package:cep_finder/components/searchBar.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../components/cepBoxes.dart';

class CepPage extends StatefulWidget {
  const CepPage({Key? key, required this.title}) : super(key: key);

  final Widget title;

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {
  var logradouro = {};

  Future getData(cepInformado) async {
    var url = Uri.parse("https://viacep.com.br/ws/$cepInformado/json/");
    var response = await http.get(url);
    var text = json.decode(response.body);
    setState(() {
      logradouro = {
        "cep": text["cep"],
        "logradouro": text["logradouro"],
        "bairro": text["bairro"],
        "localidade": text["localidade"],
        "uf": text["uf"],
      };
      print(logradouro);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 141, 141, 141),
        toolbarHeight: 75,
        title: widget.title,
      ),
      body: Container(
        color: const Color.fromARGB(255, 238, 238, 238),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: SizedBox(
                width: 360,
                child: SearchBar(getData: getData),
              ),
            ),
            const SizedBox(height: 40),
            logradouro.length != 5
                ? const Text("")
                : CepBoxes(
                    cep: logradouro["cep"].toString(),
                    logradouro: logradouro["logradouro"].toString(),
                    bairro: logradouro["bairro"].toString(),
                    localidade: logradouro["localidade"].toString(),
                    uf: logradouro["uf"].toString(),
                  ),
            const SizedBox(height: 35),
            const BottomImage(),
          ],
        ),
      ),
    );
  }
}
