// ignore: file_names
// ignore_for_file: file_names

import 'dart:io';
import 'dart:math';
import 'package:path/path.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/views/Home/home_Cardapio_widget.dart';
import 'package:flutter_app/views/pizzas/botao.dart';
import 'package:image_picker/image_picker.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_app/views/pizzas/notificatio.dart';

class AddPizzasWidget extends StatefulWidget {
  // A Interrogação antes da variavel permite colocar nulla o valor
  final List? list;
  final int ?index;

  AddPizzasWidget({ this.list, this.index});
  @override

  _AddPizzasWidgetState createState() => _AddPizzasWidgetState();
}



class _AddPizzasWidgetState extends State<AddPizzasWidget> {
/*
  File? image;

  Future pickImage() async {

    try{

      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if(image == null) return;

      final imageTemporary = File(image.path);


      print('Imagem Selecionada');
      //String extensao = extension(image.path);
      //imagem =image as TextEditingController?;
      setState(() {
        this.image = imageTemporary;
        //imagem =image as TextEditingController?;
      });
    }on Exception catch(e){
      print('Falha em carregar imagem $e' );

    }
  }
  */


  // tipo de actividade que vamos usar Editing
  TextEditingController? nome;
  TextEditingController ?preco;
  TextEditingController ?peso;
  TextEditingController ?descricao;
  TextEditingController ?imageTemporary;
  TextEditingController ?id;



  File? _image;
  final picker = ImagePicker();

  TextEditingController imagens = TextEditingController();



  get request => null;
  Future choiceImage() async{
    var pinkckedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      _image = File(pinkckedImage!.path);

    });
  }
/*
/Inserir Dados no Banco de dados
/ Autor Adilson Manuel Adiware
 */

  bool editMode =false;



  Future UploadImage() async{
    if(editMode){
      print('Entrou');
      final uri = Uri.parse("http://192.168.156.205/backend/edit.php");
      var request = http.MultipartRequest('POSt', uri);



      request.fields['id']=widget.list![widget.index!];
      //request.fields['id'] =  id!.text;
     // request.fields['id'] = widget.list![widget.index!][id].toString();
      //request.fields['id'] = widget.list as String;
      request.fields['name']= imagens.text;
      request.fields['nome'] =nome!.text;
      request.fields['descricao']=descricao!.text;
      request.fields['preco']=preco!.text;
      request.fields['peso']=peso!.text;
      var pic = await http.MultipartFile.fromPath('image', _image!.path);
      // coloquei isso
      print(_image);
      request.files.add(pic);
      var response = await request.send();
      if(response.statusCode==200){
        print('Imagem upload 1');

      }else{
        print('Falha ao enviar');
      }


    }else{
      final uri = Uri.parse("http://192.168.156.205/backend/add.php");
      var request = http.MultipartRequest('POST', uri);
      request.fields['name']= imagens.text;
      request.fields['nome'] =nome!.text;
      request.fields['descricao']=descricao!.text;
      request.fields['preco']=preco!.text;
      request.fields['peso']=peso!.text;



      var pic = await http.MultipartFile.fromPath('image', _image!.path);
      // coloquei isso
      print(_image);
      request.files.add(pic);
      var response = await request.send();
      if(response.statusCode==200){
        print('Imagem upload');

      }else{
        print('Falha ao enviar');
      }
    }

  }



/*
  // Adicionar Pizza
  AddUdateData(){

    var url ="http://192.168.243.205/backend/edit.php";
    http.post(Uri.parse(url), body: {
       'imagem':_image!.path,
      'nome' : nome!.text,
      'descricao' : descricao!.text,
      'preco' : preco!.text,
      'peso' : peso!.text,

    },

    );
    UploadImage();
  }
*/




  @override

  void initState(){

    nome = TextEditingController(text:'');
    preco = TextEditingController(text:'');
    peso = TextEditingController(text:'');
    descricao = TextEditingController(text:'');
    if(widget.index!= null){
      editMode = true;
   //   _image!.path=widget.list![widget.index!]['imagem'];
     nome!.text = widget.list![widget.index!]['nome'];
     preco!.text = widget.list![widget.index!]['preco'];
     peso!.text = widget.list![widget.index!]['peso'];
     descricao!.text=widget.list![widget.index!]['descricao'];
   //  .add(pic);
    }
    super.initState();

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
          child: SingleChildScrollView(
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
                          IconButton(onPressed: (){
                            Navigator.pop(context);
                          }, icon:  Icon(Icons.arrow_back_ios, color: Colors.white,
                            size: 22,
                            textDirection: TextDirection.ltr,),
                          ),

                          SizedBox(width: 30,),
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
                        SizedBox(height: 10,),
                   /*     Container(
                          height: 220,
                         // width: MediaQuery.of(context).size.width,
                          //width: 3200,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(Radius.circular(25)),
                          ),
                          child:_image != null? ClipOval(child: Image.file(_image!)): FlutterLogo(size: 520,),

                        ),
                        RaisedButton(onPressed: () => ImagePicker(),
                        child: Text('Imagem'),),

                    */
                        RaisedButton(
                            child: Text('Escolhe'),
                            onPressed:() {
                              choiceImage();
                            }),
                   Container(
                     child: _image == null ? Text('No Image Selected'): Image.file(_image!),
                   ),

                        SizedBox(height: 10,),
                        Padding(

                          padding: const EdgeInsets.all(6.0),
                          child: Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Text('Nome', textDirection: TextDirection
                                        .ltr,),
                                  ],
                                ),
                                SizedBox(height: 5,),
                                TextField(
                                  controller: nome,
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
                                  controller: descricao,
                               maxLines: 2,
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
                            SizedBox(height: 4,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text('Preço / Peso'),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: MediaQuery.of(context).size.width/2.1,
                                  child: TextField(
                                    controller: preco,
                                    decoration: InputDecoration(
                                      prefixText: 'Kz ',
                                      labelText: 'Preço',
                                      // hintText: 'Preço',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.black
                                          )
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

                                Container(
                                  width: MediaQuery.of(context).size.width/2.1,
                                  child: TextField(
                                    controller: peso,
                                    decoration: InputDecoration(
                                      prefixText: 'Peso ',
                                      labelText: 'Peso',
                                      // hintText: 'Preço',
                                      border: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              width: 2,
                                              color: Colors.black
                                          )
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
                              ],
                            ),

                              ],
                            ),
                          ),
                        ),
                    Container(
                      width: 250,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                      ),
                      child: RaisedButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        onPressed: (){

                              setState(() {
                               UploadImage();
                                //AddUdateData();

                                  _displayDialog(context);
                                  nome = TextEditingController(text:'');
                                  preco = TextEditingController(text:'');
                                  peso = TextEditingController(text:'');
                                  descricao = TextEditingController(text:'');


                              //  Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>HomeCardapioWidget()));


                              }
                              );
                            //  Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeCardapioWidget()));
                        },
                        child: Text('Enviar', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 20),),
                        color: Colors.pink,

                      ),
                    ),
                        SizedBox(height: 8),
                      ]
                  ),

                ),


              ],
            ),
          ),
        ),
      ),
    );
  }
}

_displayDialog(BuildContext context) async {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return Expanded(
        child: AlertDialog(
          title: Text('Cadastro de Pizza!', style: TextStyle(color: Colors.pink, fontWeight: FontWeight.bold),),
          content: Text('Dados Salvos Com Sucesso'),

        ),
      );
    },
  );
}
