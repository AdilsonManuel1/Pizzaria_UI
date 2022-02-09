import 'package:flutter/material.dart';

botaoWidgetPizza(){
  return Container(
    width: 250,
    height: 60,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(20)),
    ),
    child: RaisedButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
      onPressed: (){

      },
      child: Text('Enviar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
      color: Colors.pink,

    ),
  );
}