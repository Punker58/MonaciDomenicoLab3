import 'package:flutter/material.dart';
import '../../style/style.dart';
import 'PrenotaBarbiere.dart';

class Prenota extends StatelessWidget {
  const Prenota({Key? key}) : super(key: key);

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
                  Navigator.push(context, MaterialPageRoute<void>(builder: (context) => const PrenotaBarbiere()));
                },
                child:Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(50.0),
                  padding: const EdgeInsets.all(30),
                  decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10),
                    gradient: const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[
                        Colors.grey,
                        Colors.white,
                      ],
                    ),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 1,
                        blurRadius: 3,
                        offset: Offset(0.0, 5.0),
                      ),
                    ],
                  ),
                  child: const Column(
                    children: [
                      Icon(Icons.cut, size: 50,),
                      Text("PRENOTAZIONE", textAlign: TextAlign.center, style: zenLight,),
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