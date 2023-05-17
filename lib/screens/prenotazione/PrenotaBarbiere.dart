import 'package:corso_flutter/widget/appBarBack.dart';
import 'package:flutter/material.dart';
import '../../style/style.dart';
import 'Prenota.dart';

class PrenotaBarbiere extends StatelessWidget {
  const PrenotaBarbiere({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyappBarBack(),

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              GestureDetector(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute<void>(builder: (context) => const Prenota()));
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
                      Text("SELEZIONA BARBIERE", textAlign: TextAlign.center, style: zenLight,),
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
