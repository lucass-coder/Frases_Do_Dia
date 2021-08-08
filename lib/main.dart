import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main () {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  var _frases = [
    "A persistência é o caminho do êxito.",
    "No meio da dificuldade encontra-se a oportunidade.",
    "Lute. Acredite. Conquiste. Perca. Deseje. Espere. Alcance. Invada. Caia. Seja tudo o quiser ser, mas acima de tudo, seja você sempre.",
    "Os limites só existem se você os deixar existir.",
  ];

  var _fraseGerada = "Clique abaixo para gerar uma frase!";

  void _gerarFrase() {

    var numeroSorteado = Random().nextInt( _frases.length); //Gera números randomicos


    setState(() {
      _fraseGerada = _frases[ numeroSorteado ];
    });

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Frases do Dia"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          //width: double.infinity,
          // decoration: BoxDecoration(
          //   border: Border.all(width: 3, color: Colors.amber)
          // ),
          child: Column(
              mainAxisAlignment:  MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("images/logo.png"),
                Text(
                  _fraseGerada,
                  style: TextStyle(
                    fontSize: 25,
                    fontStyle: FontStyle.italic,
                    color: Colors.black,
                  ),
                ),
                ElevatedButton(
                  child: Text(
                    "Nova Frase",
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold
                        ),
                  ),
                  style: ButtonStyle(
                    backgroundColor:  MaterialStateProperty.all<Color>(Colors.green), //Todo esse trampo para mudar a cor
                  ),
                  onPressed: _gerarFrase,
                ),
              ]
          ),
        ),
      ),
    );
  }
}
