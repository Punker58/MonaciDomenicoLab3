import 'package:corso_flutter/widget/appBarBack.dart';
import 'package:flutter/material.dart';
import '../../style/style.dart';

class Prenota extends StatelessWidget {
  const Prenota({Key? key}) : super(key: key);

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


            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
        ),
      ),

    );
  }
}
