import 'package:cep_finder/components/cepFields.dart';
import 'package:flutter/material.dart';

class CepBoxes extends StatelessWidget {
  const CepBoxes({
    Key? key,
    this.cep = "",
    this.logradouro = "",
    this.bairro = "",
    this.localidade = "",
    this.uf = "",
  }) : super(key: key);

  final String cep;
  final String logradouro;
  final String bairro;
  final String localidade;
  final String uf;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CepFields(
          text: "CEP: $cep",
        ),
        const SizedBox(height: 15),
        CepFields(
          text: "Logradouro: $logradouro",
        ),
        const SizedBox(height: 15),
        CepFields(
          text: "Bairro: $bairro",
        ),
        const SizedBox(height: 15),
        CepFields(
          text: "Localidade: $localidade",
        ),
        const SizedBox(height: 15),
        CepFields(
          text: "UF: $uf",
        ),
      ],
    );
  }
}
