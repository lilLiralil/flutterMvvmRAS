import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
 return Scaffold(
   resizeToAvoidBottomInset: false,
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
        child: Center(
        child: Column(
        children: <Widget>[

           SizedBox(height: 100,), // Espaçamento

          Row(
          children: <Widget>[

            SizedBox(width: 40,), // Espaçamento

            Text("Seja Bem Vindo",
              style: TextStyle(color: Colors.white,
               fontWeight: FontWeight.bold,
                fontSize: 20
              ),
             ),
            ],
           ),

          SizedBox(height: 5,), // Espaçamento

          Row(
            children: <Widget>[

              SizedBox(width: 40,), // Espaçamento

              Text("Efetue o login da sua conta." ,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w100,
                ),
               ),

              SizedBox(height: 65,), // Espaçamento
            ],
           ),
          CustomTextField(hint: '......E-mail / Telefone',secured: false,),

          SizedBox(height: 25,), // Espaçamento

          CustomTextField(hint: '...... Senha',secured: true,),

          SizedBox(height: 25,), // Espaçamento

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              GestureDetector(
            onTap: (){},
                child: Container(
                  child: Text('Esqueceu sua senha?',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700
               ),
              ),
             ),
            ),
              SizedBox(width: 40,) //Espaçamento
            ],
           ),
          SizedBox(height: 20,), // Espaçamento

          Padding(padding: const EdgeInsets.only(
              left:8.0,
              right: 25.0
          ),
         child: ButtonTheme(
            minWidth: MediaQuery.of(context).size.width,
          height: 40,
          child: RaisedButton(onPressed: (){},
           color: Colors.white,
           shape: RoundedRectangleBorder(
             borderRadius: BorderRadius.circular(100)
            ),
           child: Text('Entrar...',
             style: TextStyle(color: Colors.blueGrey,
             fontSize: 15
               ),
              ),
             ),
            ),
           ),
          SizedBox(height: 25,),
          Center(child: Text('-Ou-',
            style: TextStyle(
            color: Colors.white
             ),
            ),
           ),
          SizedBox(height: 20,), // Espaçamento

          Container(
            height: 60,
            child:Row(
            mainAxisAlignment: MainAxisAlignment.center ,
            children: <Widget>[
              Image(image: AssetImage('images/fb.png')),

              SizedBox(width: 20,),

              Image(image: AssetImage('images/google.png')
             ),
            ],
           ),
          )
         ],
        ),
       ),
      ),
     );
    }
   }

   //criar um arquivo dart separado para essa classe
   class CustomTextField extends StatelessWidget {

  String hint;
  bool secured;

  CustomTextField({this.hint,this.secured}); // construtor

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.only(left:25,right:25),
    child: TextField(
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),

      obscureText: secured,
      decoration: InputDecoration(

          border:OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.transparent)),

          enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.transparent)),

          disabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: Colors.transparent)),

        hintText: hint,
        hintStyle: TextStyle(
          fontSize: 18,
          letterSpacing: 1.5,
          color: Colors.white70,
          fontWeight: FontWeight.w700,
      ),
        filled: true,fillColor: Colors.white.withOpacity(.3),
        focusColor: Colors.transparent
    ),
   ),
  );
 }
}