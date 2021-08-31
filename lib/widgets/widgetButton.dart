import 'package:flutter/material.dart';
import 'package:sim_nao/constantes/constanteTextos.dart';
import 'package:sim_nao/constantes/constantesImagens.dart';
import 'package:sim_nao/constantes/constantesRotas.dart';
import 'package:sim_nao/models/Resposta.dart';

class buttonWidget extends StatelessWidget {
late String textoBotao;
late Color corBotao;
late Resposta respostaBotao;


buttonWidget({required this.textoBotao, required this.corBotao, required this.respostaBotao});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, Rotas.rotaResposta,arguments:Resposta(texto:respostaBotao.texto,titulo: respostaBotao.titulo,img: respostaBotao.img ));
        },
        style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(corBotao)),
        child: Text(textoBotao,style: TextStyle(color: Colors.black),),
      ),
    );
  }
}