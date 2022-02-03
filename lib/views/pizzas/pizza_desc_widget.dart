import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

descPizza(BuildContext context){
  return showModalBottomSheet(
      backgroundColor: Colors.pinkAccent,
      elevation: 0,

      context: context, builder: (context)
  {
    return Container(
      height: 1240,
      color: Colors.white,
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        child: Column(
          children:[
            Image.asset('img/pizza3.jpg', width: 300,),
            Text('Pizza Familiar', style: TextStyle(color:Colors.red, fontWeight: FontWeight.bold, fontSize: 25),),
            Text('Pizza no valor de 5.000,00'),
          ]
        ),
      ),
    );
  }
  );
}