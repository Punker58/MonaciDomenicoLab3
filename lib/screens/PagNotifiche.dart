import 'package:corso_flutter/main.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';
import 'home.dart';

class PagNotifiche extends StatelessWidget {
  const PagNotifiche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        title: Row(
          children: [
            Padding(padding: EdgeInsets.all(20),
            child: IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute<void>(builder: (context) => MyHomePage(title: 'MONACI')));
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

      body: SingleChildScrollView(
        child:Padding(
          padding: const EdgeInsets.all(6.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              for (var i = 0; i < 10; i++)
                Container(
                  width: double.infinity,
                  height: 150,
                  margin: const EdgeInsets.all(5.0),
                  color: Colors.grey,
                  padding: const EdgeInsets.all(30),
                  child: const Column(
                    children: [
                      Icon(Icons.info, size: 50,),
                      Text("notifica", textAlign: TextAlign.center),
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
