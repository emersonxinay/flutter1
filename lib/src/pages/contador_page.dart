import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
 createState(){
   return _ContadorPageState();
 }
}

class _ContadorPageState extends State <ContadorPage>{
final _stilotexto = new TextStyle( fontSize: 20 );
 int _conteo = 10;
 int _restaar =15;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Emerson Stateful'),
        centerTitle: true,
        
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
            Text('numero de taps:', style: _stilotexto ),
            Text('$_conteo', style: _stilotexto),
          ],
        ),

      ),
      floatingActionButton: _crearBotones()
 
    );
    
  }

  Widget _crearBotones(){
    return Row(
      
      mainAxisAlignment: MainAxisAlignment.end,
       children: <Widget>[
         SizedBox(width:30.0),
        FloatingActionButton(child: Icon(Icons.exposure_zero), onPressed: _restaurar),
        Expanded(child: SizedBox()), 
        FloatingActionButton(child: Icon(Icons.remove), onPressed: _restar),
        SizedBox(width: 5.0),
        FloatingActionButton(child: Icon(Icons.add), onPressed: _agregar),

      ],
    );
    
  }
  void _agregar(){
    
    setState(() => _conteo++);
  }

  void _restar(){
    setState(() => _conteo-- );
  }

  void _restaurar(){
    setState(() => _conteo = 0 );
  }

}