


// ignore: file_names
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'package:flutter_app/views/Home/addpizza_widget.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_app/views/pizzas/pizza_desc_widget.dart';

class HomeCardapioWidget extends StatefulWidget {

  @override
  _HomeCardapioWidgetState createState() => _HomeCardapioWidgetState();
}

class _HomeCardapioWidgetState extends State<HomeCardapioWidget> {

  Future getData()async{
    var url = 'http://172.16.36.62/backend/read.php';
    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);

  }

  @override

  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {


    return Container(
      height: MediaQuery.of(context).size.height/1,
      width: MediaQuery.of(context).size.width,
      child: FutureBuilder(
          future: getData(),
          builder:(context, AsyncSnapshot snapshot){
            if(snapshot.hasError) print(snapshot.error);

            return snapshot.hasData ?
            ListView.builder(
                itemCount: snapshot.data!.length,
                itemBuilder: (context, index){
                  List list = snapshot.data;
                  return Container(
                      width: MediaQuery.of(context).size.width,
                   height: MediaQuery.of(context).size.height/2,
                    child:  Container(
                      height: 100,

                      child: Container(
                        child: Column(
                          children: [
                            ListTile(
                            leading: Image.asset('img/pizza1.png'),
                              title: Text(list[index]['nome'], style: TextStyle(fontSize: 30),),
                              subtitle: Text(list[index]['descricao'], style: TextStyle(fontSize: 20),),

                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                    child:
                                    Center(child:
                                    Row(

                                      children: [
                                        Text('Preço: ', style: TextStyle(fontSize: 21),),
                                        Text(list[index] ['preco'],
                                          style: TextStyle(fontSize: 20),
                                        ),
                                      ],
                                    ),
                                    ),

                                  width: MediaQuery.of(context).size.width/3,
                                ),
                                SizedBox(height: 20,),
                                Container(child: Center(
                                  child: Row(
                                    children: [
                                      Text('Peso: ', style:TextStyle(fontSize: 21),),
                                      Text(list[index] ['peso'],
                                      style: TextStyle(fontSize: 20),
                                ),
                                    ],
                                  ),
                                ),
                                  color: Colors.brown,
                                  width: MediaQuery.of(context).size.width/3,
                                ),

                              ],
                            ),
                          ],
                        ),

                      ),
                    ),
                  );

                }):CircularProgressIndicator();
          }

      ),
    );
  }
}
