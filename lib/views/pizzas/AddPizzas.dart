import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
class AddPizzasWidget extends StatefulWidget {
  @override

  _AddPizzasWidgetState createState() => _AddPizzasWidgetState();
}

class _AddPizzasWidgetState extends State<AddPizzasWidget> {
  @override
  File? image;
  Future pickImage() async {
   try{
     final image = await ImagePicker().pickImage(source: ImageSource.gallery);
     if(image == null) return;
     final imageTemporary = File(image.path);
     setState(() {
       this.image = imageTemporary;
     });
   }on Exception catch(e){
     print('Falha em carregar imagem $e' );

   }
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: [
              Container(
                color: Colors.pink,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                height: MediaQuery
                    .of(context)
                    .size
                    .height / 6,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Container(
                    width: MediaQuery
                        .of(context)
                        .size
                        .width / 8,


                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Icon(Icons.arrow_back_ios, color: Colors.white,
                          size: 26,
                          textDirection: TextDirection.ltr,),
                        SizedBox(width: 50,),
                        Text('Cadastrar Pizza', style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                          textDirection: TextDirection.rtl,)
                      ],
                    ),
                  ),
                ),


              ),

              SingleChildScrollView(
                child: Column(

                    children:

                    [
                      image != null? ClipOval(child: Image.file(image!)): FlutterLogo(size: 30,),
                      RaisedButton(onPressed: () => pickImage(),
                      child: Text('Imagem'),),
                      SizedBox(height: 10,),
                      Padding(

                        padding: const EdgeInsets.all(6.0),
                        child: Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(right: 320),
                                child: Text('Nome', textDirection: TextDirection
                                    .ltr,),
                              ),
                              SizedBox(height: 5,),
                              TextField(

                                keyboardType: TextInputType.text,
                                autofocus: false,

                                decoration: InputDecoration(

                                  hintText: 'Nome',

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
                              SizedBox(height: 5,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('Descrição'),
                                  Text('0 a 60 caracteres'),

                                ],
                              ),
                              SizedBox(height: 5,),
                              TextField(
                             maxLines: 4,
                                keyboardType: TextInputType.text,
                                autofocus: false,

                                decoration: InputDecoration(

                                  hintText: 'Descricão',

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


                            ],
                          ),
                        ),
                      )
                    ]
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
