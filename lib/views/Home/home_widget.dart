
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/Home/home_Cardapio_widget.dart';
class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/5,
              color: Colors.pink,
            ),

            Positioned(
            //  top: MediaQuery.of(context).size.height/9,
             // left: MediaQuery.of(context).size.width/8,
              child:   Padding(
                padding: const EdgeInsets.all(78.0),
                child: Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Text('Bem-Vindo', style: TextStyle(color: Colors.white, fontSize: 22, fontWeight:FontWeight.bold),),

                    IconButton(onPressed: (){}, icon:Icon(Icons.vpn_key_outlined, color: Colors.white, size: 20,) ),
                  ]
            ),
              ),
            ),

            Positioned(
              top: MediaQuery.of(context).size.height/6,
              //width: MediaQuery.of(context).size.width/1.5,
              left: MediaQuery.of(context).size.width/1.3,
              child:    Container(
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(50),
                ),

                  width: MediaQuery.of(context).size.width/5,
                  height: 60,
                 child:IconButton(onPressed: (){}, icon: Icon(Icons.search, textDirection: TextDirection.rtl, color: Colors.white,),
                  ),
              )

            ),

            Positioned(
              top: MediaQuery.of(context).size.height/6,
              width: MediaQuery.of(context).size.width/1.5,
              left: MediaQuery.of(context).size.width/15,
              child:

            TextField(
              decoration:InputDecoration(
                hintText: 'Procurar',
              fillColor: Colors.white,
                filled: true,
                border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.white,
                      width: 2,

                    ),
                    borderRadius: BorderRadius.circular(20.0),

                ),

              ),

            ),
            ),
           Column(
            children: [
              SizedBox(height:MediaQuery.of(context).size.height/4,),
              HomeCardapioWidget(),

            ],

           ),



              ],
        ),
      ) ,
    );
  }
}
