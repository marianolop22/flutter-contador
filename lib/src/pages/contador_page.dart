import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget {

  //ContadorPage({Key key}) : super(key: key);

  _ContadorPageState createState() => _ContadorPageState();

}

class _ContadorPageState extends State<ContadorPage> {

  final TextStyle _customStyle = new TextStyle (
    fontSize: 25.0
  );

  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('StateFul'),
        centerTitle: true,
      ),
      body: Center (
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Numero de click',
              style: _customStyle
            ),
            Text( '$_count' ,
              style: _customStyle
            )
          ],
        ),
      ),
      floatingActionButton: _crearBotones()



    );
  }

  Widget _crearBotones () {

    Row buttonsRow = Row (
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox( width: 30.0, ),
        FloatingActionButton(
                child: Icon( Icons.exposure_zero ),
                onPressed: _setZero,
              ),

        Expanded (child: SizedBox()),
        FloatingActionButton(
                child: Icon( Icons.remove ),
                onPressed: _remove,
              ),
        SizedBox( width: 5.0, ),
        FloatingActionButton(
                child: Icon( Icons.add ),
                onPressed: _add,
              )
      ],
    );


    return buttonsRow;

  }


  void _add () {
    _count++;
    setState(() {
    });
  }

  void _remove () {
    _count--;
    setState(() {
    });
  }

  void _setZero () {
    _count = 0;
    setState(() {
    });
  }




}
