
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/Home/home_Cardapio_widget.dart';
import 'package:flutter_app/views/login.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/api_server.dart';

class HomeWidget extends StatefulWidget {

  const HomeWidget({key}) : super(key:key);

  @override

  _HomeWidgetState createState() => _HomeWidgetState();

}

class _HomeWidgetState extends State<HomeWidget> {
  //var nome;



TextEditingController nome = TextEditingController();



  @override


  Widget build(BuildContext context) {
    ApiServer apiServer = ApiServer();
    return Container(
      height: MediaQuery.of(context).size.height/4,
      child:  Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 2,
                color: Colors.pink,
              ),

              Positioned(
                //  top: MediaQuery.of(context).size.height/9,
                // left: MediaQuery.of(context).size.width/8,
                child: Padding(
                  padding: const EdgeInsets.all(78.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Bem-Vindo', style: TextStyle(color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold),),

                        IconButton(onPressed: () {
                          Navigator.pushReplacement(
                              context, MaterialPageRoute(builder: (context) =>
                              LoginView()));
                        },
                            icon: Icon(Icons.logout_rounded, color: Colors.white,
                              size: 26,)),
                      ]
                  ),
                ),
              ),

              Positioned(
                  top: MediaQuery
                      .of(context)
                      .size
                      .height / 6,
                  //width: MediaQuery.of(context).size.width/1.5,
                  left: MediaQuery
                      .of(context)
                      .size
                      .width / 1.3,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(50),
                    ),

                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 5,
                    height: 60,
                    child: IconButton(onPressed: () {

                      setState(() {
                        apiServer.pesquisa(nome);

                      });



                    },
                      icon: Icon(Icons.search, textDirection: TextDirection.rtl,
                        color: Colors.white,),
                    ),
                  )

              ),

              Positioned(
                top: MediaQuery
                    .of(context)
                    .size
                    .height / 6,
                width: MediaQuery
                    .of(context)
                    .size
                    .width / 1.5,
                left: MediaQuery
                    .of(context)
                    .size
                    .width / 15,
                child:

                TextField(
                  controller: nome,
                  autofocus: false,
                  decoration: InputDecoration(

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



            ],
          ),
        ),
      ),
    );
  }
}


