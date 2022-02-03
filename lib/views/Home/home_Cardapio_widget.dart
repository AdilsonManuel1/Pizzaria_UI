import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/Home/addpizza_widget.dart';
import 'package:flutter_app/views/login.dart';
import 'package:flutter_app/views/pizzas/pizza_desc_widget.dart';
class HomeCardapioWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children:[
            BottaoAddPizzaWidget(context),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Cardápio', style: TextStyle(color:Colors.brown, fontWeight: FontWeight.bold, fontSize: 22),),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                children:[

                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                     image: DecorationImage(
                       fit: BoxFit.fitHeight,
                         image: AssetImage('img/pizza3.jpg',
                     ),
                     ),

                    ),

                  ),


                  Column(

                    children:[
                      Text('4 Queijos', style:TextStyle(color: Colors.brown,fontSize: 20, fontWeight: FontWeight.bold)),
                      Text('Essa é Uma Pizza Especial \npara familia')
                    ]
                  ),
    ]
    ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width/1.5,
                  color: Colors.brown,

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('img/pizza3.jpg',
                          ),
                        ),

                      ),

                    ),


                    Column(

                        children:[
                          Text('4 Queijos', style:TextStyle(color: Colors.brown,fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Essa é Uma Pizza Especial \npara familia')
                        ]
                    ),
                  ]
              ),
            ),

            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width/1.5,
                  color: Colors.brown,

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('img/pizza3.jpg',
                          ),
                        ),

                      ),

                    ),


                    Column(

                        children:[
                          Text('4 Queijos', style:TextStyle(color: Colors.brown,fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Essa é Uma Pizza Especial \npara familia')
                        ]
                    ),
                  ]
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width/1.5,
                  color: Colors.brown,

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    new GestureDetector(
                      onTap: (){

                        descPizza(context);
                      },
                      child: Container(
                        width: 120,
                        height: 120,

                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fitHeight,
                            image: AssetImage('img/pizza3.jpg',
                            ),

                          ),

                        ),

                      ),
                    ),


                    Column(

                        children:[
                          Text('4 Queijos', style:TextStyle(color: Colors.brown,fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Essa é Uma Pizza Especial \npara familia')
                        ]
                    ),
                  ]
              ),
            ),
            SizedBox(height: 5,),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  height: 2,
                  width: MediaQuery.of(context).size.width/1.5,
                  color: Colors.brown,

                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Row(
                  mainAxisAlignment:MainAxisAlignment.spaceBetween,
                  children:[
                    Container(
                      width: 120,
                      height: 120,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          fit: BoxFit.fitHeight,
                          image: AssetImage('img/pizza3.jpg',
                          ),
                        ),

                      ),

                    ),


                    Column(

                        children:[
                          Text('4 Queijos', style:TextStyle(color: Colors.brown,fontSize: 20, fontWeight: FontWeight.bold)),
                          Text('Essa é Uma Pizza Especial \npara familia')
                        ]
                    ),
                  ]
              ),
            ),


    ]
    ),
      ),

    );
  }
}
