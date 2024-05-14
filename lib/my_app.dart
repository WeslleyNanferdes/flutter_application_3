import 'package:flutter/material.dart';

class MyApp extends StatefulWidget{
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyApp();
}

class _MyApp extends State<MyApp>{
  int indexPage = 0;
  
  static List<Widget> telas = <Widget>[
    
    // TELA 1
    const Center(
      child: Text('Tela 1'),
    ),

    // TELA 2
    const Center(
      child: Text('Tela 2'),
    ),

    // TELA 3
    const Center(
      child: Text('Tela 3'),
    ),
  ];

  _pressedIcon(int index){
    setState(() {
      indexPage = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text(
              'AppBar',
                style: TextStyle(fontSize: 24)
              )
            ),
          backgroundColor: Colors.amber,
        ),

        body: Center(
          child: telas.elementAt(indexPage),
        ),

        bottomNavigationBar: BottomNavigationBar(
          currentIndex: indexPage,
          selectedItemColor: Colors.blue,
          selectedLabelStyle: const TextStyle(color: Colors.blue),
          onTap: _pressedIcon,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'home'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'notifications'
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.message),
              label: 'message'
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: <Widget>[
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'DrawerBar',
                  style: TextStyle(fontSize: 24),
                )
              ),
              ListTile(
                leading: const Icon(Icons.home),
                title: const Text('home'),
                onTap: (){
                  _pressedIcon(0);
                },
              ),

              ListTile(
                leading: const Icon(Icons.notifications),
                title: const Text('notifications'),
                onTap: (){
                  _pressedIcon(1);
                },
              ),

              ListTile(
                leading: const Icon(Icons.message),
                title: const Text('message'),
                onTap: (){
                  _pressedIcon(2);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}