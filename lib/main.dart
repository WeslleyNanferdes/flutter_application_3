import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Sonho(),
    );
  }
}

class Sonho extends StatefulWidget{
    const Sonho({super.key});

    @override
    State<Sonho> createState() => _SonhoState();
  }

class _SonhoState extends State<Sonho>{
    
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(

        ),
        body: Body(),
      );
    }
  }

class Body extends StatelessWidget{
  const Body({super.key});

  @override
  Widget build(BuildContext context){
    return ListView(
      
    );
  }
}