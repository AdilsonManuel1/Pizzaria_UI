import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  @override
  _LoginViewState createState() => _LoginViewState();

}

class _LoginViewState extends State<LoginView> {
  @override

  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.pink,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 40,),
              Image.asset('img/pizza1.png', height: 300,),
              SizedBox(height: 2,),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text('Login', style: TextStyle(color: Colors.white, fontSize: 50, fontWeight:FontWeight.bold), ),
                    Text('.', style: TextStyle(color: Colors.amber, fontSize: 80), ),
                  ],
                ),
              ),

              SizedBox(height: 15,),
              Padding(padding: EdgeInsets.all(12),
              child: Column(
                children: [

                  TextField(
                    style: TextStyle(
                      color: Colors.white,
                    ),

                    keyboardType: TextInputType.emailAddress,
                    autofocus: false,

                    decoration: InputDecoration(

                      hintText: 'Email',

                    labelStyle: TextStyle(

                      fontSize: 15.0,
                      color: Colors.white
                    ),

                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(20.0)
                      ),

                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.white,
                          width: 2,

                        ),
                        borderRadius: BorderRadius.circular(20.0)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),

                  ),
                  SizedBox(height: 15,),
                  TextField(
                      obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Password',

                      labelStyle: TextStyle(

                          fontSize: 15.0,
                          color: Colors.white
                      ),

                      border: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(20.0)
                      ),

                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                      focusedBorder:OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.white,
                            width: 2,

                          ),
                          borderRadius: BorderRadius.circular(20.0)
                      ),
                    ),


                  ),
                SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Esquece Minha Senha',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w500),),
                    ],
                  ) ,
                  SizedBox(height: 30,),
                  Container(

                    width: MediaQuery.of(context).size.width/1,
                    height: 70,
                    child: RaisedButton(onPressed: (){},
                      color: Colors.pinkAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 20),),
                        ],
                      ),

        ),
                    decoration: BoxDecoration(

                      borderRadius: BorderRadius.circular(22),

                    ),
                  ),
                ],
              ),)
            ],
          ),
        ),
      ),
    );
  }
}
