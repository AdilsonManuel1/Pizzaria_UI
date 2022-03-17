import 'package:flutter/material.dart';

class CreatUserView extends StatefulWidget {
  @override
  _CreatUserViewState createState() => _CreatUserViewState();
}

class _CreatUserViewState extends State<CreatUserView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  SingleChildScrollView(
        child: Container(
          color: Colors.pinkAccent,

          child: Column(
              children:[

                Container(
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  height: MediaQuery.of(context).size.height/4,
                  child:Center(
                    child: Text('Create Account', style: TextStyle(color: Colors.pinkAccent, fontSize: 30, fontWeight: FontWeight.bold),),
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/12,),
                Container(
                  height: MediaQuery.of(context).size.height/1.5,
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.person),
                          hintText: 'Nome',
                        ),

                      ),
                      SizedBox(height: 40,),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.email_outlined),
                          hintText: 'Email',
                        ),

                      ),
                      SizedBox(height: 40,),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Password',
                        ),

                      ),
                      SizedBox(height: 40,),
                      TextField(
                        decoration: InputDecoration(
                          icon: Icon(Icons.lock),
                          hintText: 'Confirm Password',
                        ),

                      ),
                      Container(
                        child: RaisedButton(
                          onPressed: (){},

                        ),
                      ),
                    ],
                  ),
                ),

              ]
          ),
        ),
      ),
    );
  }
}
