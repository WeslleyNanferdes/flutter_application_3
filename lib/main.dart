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
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        
        selectedIndex: currentPageIndex,
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        destinations: const [
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.notification_add),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Icon(Icons.message),
            label: 'Messages',
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
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Centro'),
          const SizedBox(height: 10.0),
          ElevatedButton(
            onPressed: () {
              currentPageIndex += 1;
            },
            child: const Text('Mudar Página'),
          ),
        ],
      ),
    );
  }
}