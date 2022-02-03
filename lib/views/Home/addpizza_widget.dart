import 'package:flutter/material.dart';
import 'package:flutter_app/views/login.dart';
import 'package:flutter_app/views/pizzas/AddPizzas.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

BottaoAddPizzaWidget(BuildContext context){
  return Container(
    width: 250,
    height: 60,
    child:
    RaisedButton(
        color: Colors.pink,

        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Text('Cadastrar Pizza', style:TextStyle(color:Colors.white, fontSize: 20, fontWeight:FontWeight.bold )),
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPizzasWidget() ),
          );
        }),
  );
}

