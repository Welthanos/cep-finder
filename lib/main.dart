import 'package:cep_finder/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {

  //Inicialização do programa
  WidgetsFlutterBinding.ensureInitialized();

  //Configurando para visualização apenas em modo retrato
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {

    //Rodando a aplicação
    runApp(const MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'CEP Finder',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
