import 'package:flutter/material.dart';
import '../../style/style.dart';
import 'elenco.dart';
import '../../main.dart';

class ElencoServizi extends StatelessWidget {
  const ElencoServizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Row(
          children: [
            Padding(padding: EdgeInsets.all(20),
              child: IconButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Servizi()));
                },
                icon: const Icon(Icons.arrow_back),
                iconSize: 40,
              ),
            ),

            const Column(
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

      body: GridView.builder(
            itemCount: 14,
            gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 8, mainAxisSpacing: 8),
            itemBuilder: (context, index) {
              return Container(
                width: double.infinity,
                height: 150,
                margin: const EdgeInsets.all(40.0),
                color: Colors.grey,
                padding: const EdgeInsets.all(40),
                child: const Column(
                  children: [
                    Icon(Icons.shopping_bag, size: 10,),
                    Text("S", textAlign: TextAlign.center),
                  ],
                ),
              );
            },
        ),

    );
  }
}
