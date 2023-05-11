import 'package:flutter/material.dart';
import '../style/style.dart';

class Info extends StatelessWidget {
  const Info({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              const Text("Negozio", textAlign: TextAlign.left,),
              Container(
                width: double.infinity,
                height: 200,
                margin: const EdgeInsets.all(5.0),
                color: Colors.black,
              ),

              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.all(5.0),
                color: Colors.grey,
                padding: const EdgeInsets.all(30),
                child: const Column(
                  children: [
                    Icon(Icons.info, size: 50,),
                    Text("STORIA", textAlign: TextAlign.center),
                  ],
                ),
              ),


              Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.all(5.0),
                color: Colors.grey,
                padding: const EdgeInsets.all(30),
                child: const Column(
                  children: [
                    Icon(Icons.info, size: 50,),
                    Text("HAIR STYLIST", textAlign: TextAlign.center),
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
