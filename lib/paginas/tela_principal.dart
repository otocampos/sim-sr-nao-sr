import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class telaPrincipal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Crie um sistema",style: TextStyle(fontSize: 24),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    child: Text('Sim Senhor'),
                    onPressed: () {
                      Navigator.pushNamed(context, 'tela_sim');
                    },
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'tela_nao');

                  },
                  style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.red) ),
                  child: Text('Não Senhor'),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
