import 'package:flutter/material.dart';
import 'package:sim_nao/constantes/constanteTextos.dart';
import 'package:sim_nao/constantes/constantesImagens.dart';
import 'package:sim_nao/constantes/constantesParametros.dart';
import 'package:sim_nao/models/Resposta.dart';

class telaResposta extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var resposta = ModalRoute.of(context)?.settings.arguments as Resposta ;

   /* final String texto =
        args == Parametros.resposta_sim ? Textos.aceitou : Textos.nao_aceitou;
    final String img = args == Parametros.resposta_sim
        ? Imagens.img_sim_senhor
        : Imagens.img_nao_senhor;
    final titulo = args == Parametros.resposta_sim
        ? Textos.label_sim_senhor
        : Textos.label_nao_senhor;*/

    return Scaffold(
      appBar: AppBar(
        title: Text('${resposta.titulo}'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('${resposta.texto}', style: TextStyle(fontSize: 24)),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  'img/${resposta.img}',
                  width: 150,
                  height: 150,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
