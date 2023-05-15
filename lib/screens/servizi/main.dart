import 'package:corso_flutter/widget/appBarBack.dart';
import 'package:flutter/material.dart';

class ElencoServizi extends StatelessWidget {
  const ElencoServizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: MyappBarBack(),

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

