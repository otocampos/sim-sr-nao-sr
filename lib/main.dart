import 'package:flutter/material.dart';
import 'package:sim_nao/paginas/tela_nao.dart';
import 'package:sim_nao/paginas/tela_principal.dart';
import 'package:sim_nao/paginas/tela_sim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "tela_inicial",
      routes: {
        "tela_inicial": (context) => telaPrincipal(),
        "tela_sim": (context) => telaSim(),
        "tela_nao":(context) =>telaNao()
      },
    );
  }
}
