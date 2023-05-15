import 'package:flutter/material.dart';
import '../../style/style.dart';
import 'main.dart';
import '../../widget/appBar.dart';

class Servizi extends StatelessWidget {
  const Servizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(builder: (context) => ElencoServizi()));
                },
                child:Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(50.0),
                  color: Colors.grey,
                  padding: const EdgeInsets.all(30),
                  child: const Column(
                    children: [
                      Icon(Icons.shopping_bag, size: 50,),
                      Text("Servizi", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(builder: (context) => ElencoServizi()));
                },
                child:Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(50.0),
                  color: Colors.grey,
                  padding: const EdgeInsets.all(30),
                  child: const Column(
                    children: [
                      Icon(Icons.shopping_bag, size: 50,),
                      Text("Prodotti", textAlign: TextAlign.center),
                    ],
                  ),
                ),
              ),

            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),

    );
  }
}



