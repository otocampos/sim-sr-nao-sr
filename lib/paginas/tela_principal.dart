import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sim_nao/constantes/constanteTextos.dart';
import 'package:sim_nao/constantes/constantesImagens.dart';
import 'package:sim_nao/constantes/constantesParametros.dart';
import 'package:sim_nao/constantes/constantesRotas.dart';
import 'package:sim_nao/models/Resposta.dart';
import 'package:sim_nao/widgets/widgetButton.dart';

class telaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Textos.label_home),
      ),
      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(64.0),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(Textos.ordem,style: TextStyle(fontSize: 24),),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    buttonWidget(textoBotao: Textos.label_sim_senhor,corBotao: Colors.blue,respostaBotao: Resposta(texto:Textos.aceitou,titulo: Textos.label_sim_senhor,img: Imagens.img_sim_senhor ),),
                    buttonWidget(textoBotao: Textos.label_talvez_senhor,corBotao: Colors.yellow,respostaBotao: Resposta(texto:Textos.talvez_aceite,titulo: Textos.label_talvez_senhor,img: Imagens.img_talvez_senhor ),),
                    buttonWidget(textoBotao: Textos.label_nao_senhor,corBotao: Colors.red,respostaBotao: Resposta(texto:Textos.nao_aceitou,titulo: Textos.label_nao_senhor,img: Imagens.img_nao_senhor ),),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


