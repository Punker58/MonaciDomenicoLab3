import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/info.dart';
import 'screens/servizi/elenco.dart';
import 'widget/appBar.dart';
import 'screens/dashboard/main.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MONACIDOMENICO.LAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;

  final _screens = const [
    Home(),
    Info(),
    Center(child: Text('prenota')),
    Servizi(),
    DashMain(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyappBar(),

      bottomNavigationBar: NavigationBar(
        selectedIndex: _selectedIndex,
        onDestinationSelected: (index) => setState(() => _selectedIndex = index),
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(Icons.info),
            label: 'Info',
          ),
          NavigationDestination(
            icon: Icon(Icons.cut),
            label: 'Prenota',
          ),
          NavigationDestination(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'Servizi',
          ),
          NavigationDestination(
            icon: Icon(Icons.account_circle),
            label: 'Utente',
          ),
        ],
      ),

      body: _screens[_selectedIndex],

    );
  }
}

