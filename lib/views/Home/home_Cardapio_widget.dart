// ignore: file_names
import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/api_server.dart';
import 'package:flutter_app/views/Home/home_widget.dart';
import 'package:flutter_app/views/pizzas/AddPizzas.dart';
import 'package:http/http.dart' show get;
import 'package:flutter_app/views/Home/addpizza_widget.dart';
import 'package:http/http.dart' as http;

import 'package:flutter_app/views/pizzas/pizza_desc_widget.dart';

class HomeCardapioWidget extends StatefulWidget {

  @override
  _HomeCardapioWidgetState createState() => _HomeCardapioWidgetState();
}

class _HomeCardapioWidgetState extends State<HomeCardapioWidget> {


  ApiServer apiServer = ApiServer();

  Future getData()async{
   // var url = 'http://172.16.200.121/backend/read.php';
    var url = 'http://192.168.3.205/backend/read.php';

    var response = await http.get(Uri.parse(url));
    return json.decode(response.body);
  }

  @override

  void initState(){
    super.initState();
  }
  Widget build(BuildContext context) {


    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height/1,
          //color: Colors.white54,
          child: Column(
            children: [

              HomeWidget(),
              SizedBox(height: 10,),
              BottaoAddPizzaWidget(context),
              SizedBox(height: 10,),

              Container(


                height: MediaQuery.of(context).size.height/1.56,
                //  height: 1200,
                //  width: MediaQuery.of(context).size.width,
                child: FutureBuilder(
                    future: getData(),
                    builder:(context, AsyncSnapshot snapshot){
                      if(snapshot.hasError) print(snapshot.error);

                      return snapshot.hasData ?
                      ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: snapshot.data!.length,
                          itemBuilder: (context, index){
                            List list = snapshot.data;



                            // Alert Dados Eliminados
                            _displayDialog(BuildContext context) async {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Expanded(
                                    child: AlertDialog(
                                      title: Text('Cadastro de Pizza!', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
                                      content: Text('Dados Salvos Com Sucesso'),
                                      actions: [
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              apiServer.delet(list[index]);
                                            });
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('YES', style: TextStyle(color: Colors.black),),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                          child: Text('NO', style: TextStyle(color: Colors.black),),
                                        ),
                                      ],

                                    ),
                                  );
                                },
                              );
                            }

                            return Container(
                              width: MediaQuery.of(context).size.width/1,

                              height: MediaQuery.of(context).size.height/2,
                              child:  Container(
                                // height: MediaQuery.of(context).size.height/2,
                                decoration: BoxDecoration(

                                  borderRadius: BorderRadius.all(
                                      Radius.circular(12.0)
                                  ),
                                  //  color: Colors.yellow,
                                ),
                                child: Container(
                                  //color: Colors.green,
                                  height: MediaQuery.of(context).size.height/2,
                                  //   color: Colors.green,
                                  child: Column(
                                    children: [

                                      Container(

                                        child: Column(
                                          children: [

                                            Padding(
                                              padding: const EdgeInsets.all(8.0),
                                              child: Container(

                                                child: Image.network('http://192.168.3.205/backend/imagens/'+ list[index]['imagem'],height: 240,),

                                              ),
                                            ),
                                            Text(list[index]['nome'], style: TextStyle(fontSize: 30, color: Colors.pink, fontWeight: FontWeight.bold),),
                                            // Text('Descrição'),
                                            SizedBox(height: 5,),
                                            Text(list[index]['descricao']),
                                            SizedBox(height: 18,),
                                            Row(

                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [


                                                Container(
                                                  child:
                                                  Center(child:
                                                  Row(


                                                    children: [
                                                      Container(

                                                        child: Row(
                                                          mainAxisAlignment:MainAxisAlignment.start,
                                                          children: [
                                                            Text('Preço: ', style: TextStyle(fontSize: 21),),
                                                            Text(list[index] ['preco'],

                                                              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                                            ),

                                                          ],

                                                        ),

                                                        color: Colors.yellow,
                                                        width: MediaQuery.of(context).size.width/3,
                                                        height:40,
                                                      ),

                                                    ],
                                                  ),
                                                  ),

                                                  width: MediaQuery.of(context).size.width/3,
                                                ),

                                                Container(

                                                  child: Center(
                                                    child: Row(

                                                      children: [

                                                        Text('Peso: ', style:TextStyle(fontSize: 21),),
                                                        Text(list[index] ['peso'],
                                                          style: TextStyle(fontSize: 20),
                                                        ),

                                                      ],
                                                    ),
                                                  ),

                                                  width: MediaQuery.of(context).size.width/3.50,
                                                ),

                                              ],
                                            ),
                                            //  Text(list[index]['imagem']),
                                            Row(
                                              children: [
                                                IconButton(onPressed: (){
                                                  Navigator.push(
                                                    context,
                                                    MaterialPageRoute(builder: (context) => AddPizzasWidget(list: list,index: index,) ),
                                                  );
                                                }, icon:Icon(Icons.delete), color: Colors.pink),
                                                IconButton(onPressed: (){
                                                  _displayDialog(context);


                                                }, icon:Icon(Icons.delete), color: Colors.pink),
                                              ],
                                            ),
                                          ],
                                        ),

                                        width: MediaQuery.of(context).size.width/1.1,
                                        height: MediaQuery.of(context).size.height/2,
                                        decoration: BoxDecoration(
                                          color: Colors.white54,

                                          borderRadius: BorderRadius.all(
                                            Radius.circular(10.0),
                                          ),
                                        ),

                                      ),

                                      /*  ListTile(
      leading: Image.asset('img/pizza1.png', width: 200,),
      title: Text(list[index]['nome'], style: TextStyle(fontSize: 30),),
      subtitle: Text(list[index]['descricao'], style: TextStyle(fontSize: 10),),

      ), */



                                      SizedBox(height: 5,),

                                    ],
                                  ),

                                ),

                              ),
                            );

                          }):Center(
                          child: SizedBox(
                            child: CircularProgressIndicator(),
                            height: 100.0,
                            width: 100.0,
                          )
                      );
                    }

                ),
              ),

            ],
          ),
        ),
      ),
    );
  }

}

