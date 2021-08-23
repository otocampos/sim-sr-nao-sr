import 'package:flutter/material.dart';

class telaNao extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Não Senhor'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Você não aceitou a ordem",style: TextStyle(fontSize: 24)),
              Image.asset('img/prisao.jpg', width: 150,height: 250)
          ],
        ),
      ),
    );
  }
}
