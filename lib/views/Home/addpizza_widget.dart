import 'package:flutter/material.dart';

 BottaoAddPizzaWidget(){
  return Container(
    width: 250,
    height: 60,
    child: RaisedButton(
      color: Colors.pink,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),
        child: Text('Cadastrar Pizza', style:TextStyle(color:Colors.white, fontSize: 20, fontWeight:FontWeight.bold )),
        onPressed: (){

}),
  );
}