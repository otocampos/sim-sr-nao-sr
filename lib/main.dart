import 'package:flutter/material.dart';
import 'package:sim_nao/constantes/constantesRotas.dart';
import 'package:sim_nao/paginas/tela_principal.dart';
import 'package:sim_nao/paginas/tela_resposta.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: Rotas.rotaInicial,
      routes: {
        Rotas.rotaInicial: (context) =>  telaPrincipal(),
        Rotas.rotaResposta: (context) => telaResposta(),
      },
    );
  }
}
