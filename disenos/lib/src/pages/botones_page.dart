import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class BotonesPage extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(        
        children: [
          _fondoapp(),
          SingleChildScrollView(
            child: Column(
              children: [
                _titutlos(),
                _botonesRedondeados(),
              ],
            ),
          ),
        ],

      ),
      bottomNavigationBar:_buttonnavigationBar(context)      
    );
  }

  Widget _fondoapp() {
    final gradiente =Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: FractionalOffset(0.0,0.6) ,
          end:   FractionalOffset(0.0,1.0), 
         colors: [
           Color.fromRGBO(52, 54, 101,1.0),
           Color.fromRGBO(35, 37, 57,1.0),
         ]
        ),
      ),
    );

  final cajaRosa=Transform.rotate(
    angle: -pi/5.0,    
  child:Container(
    height: 360.0,
    width: 360.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(90.0),
      gradient: LinearGradient(          
         colors: [
           Color.fromRGBO(236, 98, 188,1.0),
           Color.fromRGBO(241, 142, 172,1.0),
         ]
        ),
    ),
    ) ,
  );

  

    return Stack(
      children: [
        gradiente,
        Positioned(
          top: -100,
          left: -50,
          child:  cajaRosa,
        )
      ],
    );
  }

  Widget _titutlos(){
    return SafeArea(
          child: Container(
            padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Clasify hola", style: TextStyle(color: Colors.white, fontSize: 30.0,fontWeight:FontWeight.bold ),),
              SizedBox(height: 10.0,),
              Text("classify this transaction into a popular ",style: TextStyle(color: Colors.white, fontSize: 18.0 )) 
            ],
          ),

      ),
    );
  }

Widget _buttonnavigationBar(BuildContext context){
  return Theme(
    data: Theme.of(context).copyWith(
      canvasColor: Color.fromRGBO(45, 57, 840, 1.0),
      primaryColor: Colors.pinkAccent,
      textTheme: Theme.of(context).textTheme.copyWith(
        caption: TextStyle(color: Color.fromRGBO(116, 117, 152, 1.0))
      ),
    ),
    child: BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.sentiment_neutral),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sentiment_satisfied),
          title: Container(),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.sentiment_very_dissatisfied),
          title: Container(),
        ),
      ],
    ),
  );

}

  Widget _botonesRedondeados(){
    return Table(
      children: [
        TableRow(
          children: [
            _crearBotnRedondeado(Colors.blue,Icons.settings_brightness,"general"),
            _crearBotnRedondeado(Colors.purpleAccent,Icons.settings_input_svideo,"video"),
          ]
        ),
        TableRow(
          children: [
            _crearBotnRedondeado(Colors.redAccent,Icons.opacity,"hola"),
            _crearBotnRedondeado(Colors.blue,Icons.settings_brightness,"general"),
          ]
        ),
        TableRow(
          children: [
            _crearBotnRedondeado(Colors.deepOrange,Icons.settings_brightness,"general"),
            _crearBotnRedondeado(Colors.white10,Icons.settings_brightness,"general"),
          ]
        ),
        TableRow(
          children: [
            _crearBotnRedondeado(Colors.tealAccent,Icons.settings_brightness,"general"),
            _crearBotnRedondeado(Colors.orange,Icons.settings_brightness,"general"),
          ]
        ),
      ],
    );  
  }

  Widget _crearBotnRedondeado(Color color, IconData icono,String string ){

    return ClipRect(
      child: BackdropFilter(
        filter: ImageFilter.blur( ),//consume recursos 
        child: Container(
          height: 180.0,
          margin: EdgeInsets.all(15.0),
          decoration: BoxDecoration(color: Color.fromRGBO(62, 66, 107, 0.7),
          borderRadius: BorderRadius.circular(20.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SizedBox(height: 5.0,),
              CircleAvatar(
                backgroundColor: color,
                radius: 35.0,
                child: Icon(icono, color: Colors.white, size: 30.0,),            
              ),
              Text(string, style: TextStyle(color: color), ),
              SizedBox(height: 5.0,),
            ],
          ),
        ),
      ),
    );
  }
}