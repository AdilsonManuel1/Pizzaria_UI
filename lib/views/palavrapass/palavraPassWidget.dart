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

          ],
        ),
      ),
    );
  }
}
