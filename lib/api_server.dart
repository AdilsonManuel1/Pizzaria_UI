import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;

class ApiServer{

  String url = 'http://192.168.3.205/backend/delet.php';

  TextEditingController nome = TextEditingController();
  delet(dynamic list){
      http.post(Uri.parse(url), body:{
        'id': list['id'],
      });

    }

    String urlPesquisa ='http://192.168.3.205/backend/pesquisar.php';
  pesquisa(dynamic nome){
    http.post(Uri.parse(urlPesquisa),
    body: {
      'nome' : nome!.text,
    }
    );
  }

  }
