import 'package:flutter/material.dart';
import '../../style/style.dart';

class DashMain extends StatelessWidget {
  const DashMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column (
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [


              const Text("Gestione servizi", textAlign: TextAlign.left,),
              const Divider(),
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
                        child: const Text("bonus" , textAlign: TextAlign.center,),
                      )
                  ],
                ),
              ),

              const Text("Gestione prodotti (admin)", textAlign: TextAlign.left,),
              const Divider(),
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
                        child: const Text("bonus" , textAlign: TextAlign.center,),
                      )
                  ],
                ),
              ),

              const Text("Altro", textAlign: TextAlign.left,),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    for(var i = 0; i < 7; i++)
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

              const Text("Superadmin", textAlign: TextAlign.left,),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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

              const Text("utente", textAlign: TextAlign.left,),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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

              const Text("Privacy", textAlign: TextAlign.left,),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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

              const Text("Esci", textAlign: TextAlign.left,),
              const Divider(),
              SizedBox(
                height: 100,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
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

            ],
          ),
        ),
      ),
    );
  }
}
