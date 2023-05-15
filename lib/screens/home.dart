import 'package:flutter/material.dart';
import '../style/style.dart';
import '../screens/PagNotifiche.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

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
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => PagNotifiche()));
                      },
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