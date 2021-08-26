import 'package:flutter/material.dart';
class HomePage extends StatelessWidget {
 final stilotexto = new TextStyle( fontSize: 20 );
 final conteo = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('titulo'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
            Text('numero de Clicks:', style: stilotexto ),
            Text('$conteo', style: stilotexto),
          ],
        ),

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: (){
          print('Hola amigos ');
        },
      )
 
    );
    
  }
}