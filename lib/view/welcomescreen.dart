import 'dart:async';

import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'loginScreen.dart';


class MyHomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 5000),(){
      Navigator.push(
        context,MaterialPageRoute(builder: (context) => LoginScreen()));
    });
    return Scaffold(
     body: Container(
       decoration: BoxDecoration (
         gradient: LinearGradient (
             colors:
             [Colors.blue,
               Colors.blue[400]],
             begin: Alignment.bottomCenter,
             end: Alignment.topCenter),
         image: DecorationImage(image: AssetImage('images/1.png'),fit: BoxFit.cover),
       ),
       child: Column(
         crossAxisAlignment: CrossAxisAlignment.center,
         children: <Widget>[
           SizedBox(height: 120,),
           Text('Titulo do app na tela de Bem Vindo',
             style: TextStyle(
             color: Colors.white,
                 fontFamily:'Camar',
                 fontSize: 30, //font titulo
             ),
           ),

           SizedBox(height: 20,), // Espaçamento

           Container(
             height: 260,
             child: Image(image: AssetImage('images/2.png')),
           ),

           SizedBox(height: 15,), // Espaçamento

           Text('Carregando...',style: TextStyle(
             color: Colors.white,fontSize: 22
             ),
            ),

           SizedBox(height: 75,), // Espaçamento

           new LinearPercentIndicator(
             animation: true,
             animationDuration: 5000,
             width: 500.0,
             lineHeight: 4.0,
             percent: 1.0,
             backgroundColor: Colors.grey[200],
             progressColor: Colors.black87,
           ),
         ],
        ),
      ),
    );
  }
}