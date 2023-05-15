import 'package:corso_flutter/widget/appBar.dart';
import 'package:flutter/material.dart';
import '../style/style.dart';

class PagNotifiche extends StatelessWidget {
  const PagNotifiche({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyappBar(),

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
