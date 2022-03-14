import 'package:flutter/material.dart';

Mensagens(){

  _displayDialog(BuildContext context) async {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return Expanded(
          child: AlertDialog(
            title: Text('Welcome'),
            content: Text('Do you wanna learn flutter?'),
            actions: [
              TextButton(
                onPressed: () {
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
}