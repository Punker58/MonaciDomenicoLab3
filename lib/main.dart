import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'style/style.dart';

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
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a blue toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'MONACIDOMENICO.LAB'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  // style
  final ButtonStyle style =
  ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 25),
    backgroundColor: Colors.black87,
    foregroundColor: Colors.white,
    padding: const EdgeInsets.all(30),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(50),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // appbar
      appBar: AppBar(
        title: const Column(
          children: [
            Text(
              "MONACIDOMENICO.LAB",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ZenAntique',
                fontWeight: FontWeight.w700,
              ),
            ),
             Text(
              "HAIR DESIGNER",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'ZenAntique',
                fontWeight: FontWeight.w200,
                fontSize: 18,
              ),
            ),
          ],
        ),

        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 10,
        leading:
          Container(
            height: 300,
          ),
      ),

      bottomNavigationBar: NavigationBar(
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

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Container(
                height: 100,
                margin: const EdgeInsets.all(5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Ciao \nnome utente',
                      style: TextStyle(fontSize: 26,),
                      textAlign: TextAlign.left,
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(Icons.notifications),
                      iconSize: 40,
                    ),
                  ],
                ),
              ),

              const Divider(),
              const Text("Novità", textAlign: TextAlign.left,),
              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(5.0),
                color: Colors.black,
              ),

              const Divider(),
              Align(
                child:
                  ElevatedButton.icon(
                    onPressed: () {},
                    style: style,
                    icon: const Icon(Icons.notifications),
                    label: const Text('Prenota ora'),
                  ),
                ),


              const Divider(),
              const Text("Prossima prenotazione", ),
              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.all(5.0),
                color: Colors.grey,
                padding: const EdgeInsets.all(60),
                child: const Text("Nessuna prenotazione recente", textAlign: TextAlign.center),
              ),

              const Divider(),
              const Text("Bonus", textAlign: TextAlign.left,),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(var i = 0; i < 4; i++)
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 100,
                        height: double.infinity,
                        color: Colors.grey,
                        padding: const EdgeInsets.all(30),
                        child: const Text("bonus" , textAlign: TextAlign.center,),
                      )
                  ],
                ),
              ),

              const Divider(),
              const Text("Eventi", textAlign: TextAlign.left,),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(var i = 0; i < 3; i++)
                      Container(
                        margin: const EdgeInsets.all(8),
                        width: 100,
                        height: double.infinity,
                        color: Colors.grey,
                        padding: const EdgeInsets.all(30),
                        child: const Text("evento" , textAlign: TextAlign.center,),
                      )
                  ],
                ),
              ),
          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
      ),
    );
  }
}
