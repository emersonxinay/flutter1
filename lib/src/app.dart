
import 'package:flutter/material.dart';
import 'package:contador/src/pages/contador_page.dart';

//import 'package:contador/src/pages/home_page.dart';
class MyApp extends StatelessWidget{
  
  @override
  Widget build( context ){
    return MaterialApp(
      debugShowCheckedModeBanner: false,//para eliminar el banner por defecto que sale en la aplicación
      home: Center(
        //child: HomePage(),
        child: ContadorPage(),
      ),
      
    );
      
  }
  }