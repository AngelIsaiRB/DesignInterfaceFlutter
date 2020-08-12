import 'package:flutter/material.dart';

class BasicoPage extends StatelessWidget {

  final stiloTitulo = TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold );
  final stiloSubtitulo = TextStyle(fontSize: 18.0,color: Colors.grey);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [          
          _crearImagen(),
          _crearTitulos(),
          _acciones(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
          _crearTexto(),
        ],
        ),
      ),
    );
  }


  Widget _crearImagen(){
      return Image(
            image: NetworkImage("https://cdn.pixabay.com/photo/2012/08/27/14/19/evening-55067__340.png",),                        
          );
  }

  Widget _crearTitulos(){
    return SafeArea(
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30.0,vertical: 20.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      crossAxisAlignment:  CrossAxisAlignment.start,
                      children: [
                        Text("este es el texto 1", style: stiloTitulo,),
                        SizedBox(height: 8.0,),
                        Text("este es el texto 2", style: stiloSubtitulo,)
                      ],
                    ),
                  ),
                   Icon(Icons.star, color: Colors.red, size: 30.0,),
                   Text("41", style: TextStyle(fontSize: 20.0),),
                   
                ],
              ),
            ),
    );
  }

  Widget _acciones() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _crearAccion(Icons.call,"call"),
        _crearAccion(Icons.near_me,"route"),
        _crearAccion(Icons.share,"share"),
      ],
    );

  }

Widget _crearAccion(IconData icon, String text){
  return Column(
          children: [
            Icon(icon, color: Colors.blue, size: 40.0,),
            SizedBox(height: 7.0,),
            Text(text, style: TextStyle(fontSize: 15.0,color: Colors.blue),),
          ],
        );
}

  Widget _crearTexto(){
    return SafeArea(
          child: Container(
        padding: EdgeInsets.symmetric(horizontal: 40.0,vertical: 20.0),
        child: Text("este es un texto grande de proporciones grandes por lo que si "
        , textAlign: TextAlign.justify,)
        
        ),
    );

  }
}