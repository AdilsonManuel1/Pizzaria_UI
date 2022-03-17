import 'package:flutter/material.dart';

class PalavraPassWidgt extends StatefulWidget {
  @override
  _PalavraPassWidgtState createState() => _PalavraPassWidgtState();
}

class _PalavraPassWidgtState extends State<PalavraPassWidgt> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
       title: const Text('Esqueceu a Palavra Pass',
       style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
       backgroundColor: Colors.pink,
     ),
      body: Container(

        height: MediaQuery.of(context).size.height/2,
        width: MediaQuery.of(context).size.width/1,
        child: Column(
          children: [
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Insira o seu E-mail, vamos enviar as\n instruções para recuperar \nsua palavra pass.\n', textAlign: TextAlign.center, style:
                TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width/1.1,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                autofocus: true,
                decoration: InputDecoration(
                  hintText: 'Email',
                  labelStyle: TextStyle(

                      fontSize: 15.0,
                      color: Colors.pink
                  ),
                  border: OutlineInputBorder(
                      borderSide: BorderSide(

                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),

                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(

                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(

                        width: 2,

                      ),
                      borderRadius: BorderRadius.circular(10.0)
                  ),
                ),

                ),
            ),
              SizedBox(height: 10,),
              Container(
                  height: 65,
                width: MediaQuery.of(context).size.width/2,
                decoration: BoxDecoration(
                    color: Colors.pink,

                  borderRadius: BorderRadius.all(Radius.circular(12))
                ),
                child: RaisedButton(onPressed: (){},
                  color: Colors.white,
                  shape:RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                child: Text('Enviar', style: TextStyle(color: Colors.pink, fontWeight:FontWeight.bold, fontSize: 22),),
                ),
              )
          ],
        ),
      ),
    );
  }
}
