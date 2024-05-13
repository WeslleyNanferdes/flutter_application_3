import 'package:flutter/material.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
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
        bottomNavigationBar: NavigationBar(
          destinations: const [
            NavigationDestination(
              selectedIcon: Icon(Icons.home),
              icon: Icon(Icons.home_outlined),
              label: 'Home',
            ),
            NavigationDestination(
              icon: ,
              label: ,
            ),
            NavigationDestination(
              icon: ,
              label: ,
            ),
          ],
        ),
        appBar: AppBar(
          title: const Center(
            child: Text('NavigatorBar'),
          ),
          backgroundColor: Colors.blue,
        ),
        body: const Body(),
      );
    }
  }

class Body extends StatelessWidget{
  const Body({super.key});

  @override
  Widget build(BuildContext context){
    return ListView(
      children: const [
        
      ],
    );
  }
}