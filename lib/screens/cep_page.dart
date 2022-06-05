import 'dart:convert';
import 'package:cep_finder/screens/splash_screen.dart';
import 'package:flutter/material.dart';

import 'package:cep_finder/components/bottom_image.dart';
import 'package:cep_finder/components/search_bar.dart';
import '../components/cep_boxes.dart';

// ignore: depend_on_referenced_packages
import 'package:http/http.dart' as http;

class CepPage extends StatefulWidget {
  const CepPage({Key? key}) : super(key: key);

  @override
  State<CepPage> createState() => _CepPageState();
}

class _CepPageState extends State<CepPage> {


  Widget logo =
      SizedBox(height: 60, child: Image.asset('assets/images/logo_cz.png'));

  var logradouro = {};

  Widget background01 = Image.asset(
    'assets/images/background_01.png',
    fit: BoxFit.fill,
  );

  Widget background02 = Image.asset(
    'assets/images/background_02.png',
    fit: BoxFit.cover,
  );

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
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 71, 71, 71),
        toolbarHeight: 75,
        title: logo,
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: logradouro.isEmpty ? background01 : background02,
          ),
          Column(
            children: [
              SearchBar(getData: getData),
              const SizedBox(height: 25),
              logradouro.length != 5
                  ? const Text("")
                  : CepBoxes(
                      cep: logradouro["cep"].toString(),
                      logradouro: logradouro["logradouro"].toString(),
                      bairro: logradouro["bairro"].toString(),
                      localidade: logradouro["localidade"].toString(),
                      uf: logradouro["uf"].toString(),
                    ),
            ],
          ),
        ],
      ),
    );
  }
}
