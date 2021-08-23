import 'package:flutter/material.dart';

class telaSim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sim Senhor'),
      ),
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Você Aceitou a ordem",style: TextStyle(fontSize: 24)),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.asset('img/continencia.png',width: 150,height: 150,),
            ),

          ],
        ),
      ),
    );
  }
}
