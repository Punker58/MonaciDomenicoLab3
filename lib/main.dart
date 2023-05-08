import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {

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

    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 1,
      ),
      body: Padding(
        padding: const EdgeInsets.all(6.0),
        child: Column(
          children: [

            Container(
              width: double.infinity,
              height: 100,
              margin: const EdgeInsets.all(5.0),
              child: Image.asset(
                'images/logo_standard.png',
              ),
            ),

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
            ElevatedButton.icon(
              onPressed: () {},
              style: style,
              icon: const Icon(Icons.notifications),
              label: const Text('Prenota ora'),
            ),

          ],
        ), // This trailing comma makes auto-formatting nicer for build methods.
      ),
    );
  }
}
