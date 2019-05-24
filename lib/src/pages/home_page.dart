import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final TextStyle customStyle = new TextStyle (
    fontSize: 25.0
  );

  final int count = 0;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Titulo'),
        centerTitle: true,
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de clicks',
              style: customStyle
            ),
            Text( '$count' ,
              style: customStyle
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.add ),
        onPressed: () { print('hola mundo');  },

      ),



    );
  }
}