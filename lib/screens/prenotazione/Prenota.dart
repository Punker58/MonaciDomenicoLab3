import 'package:corso_flutter/widget/appBarBack.dart';
import 'package:flutter/material.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import '../../style/style.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

final _formKey = GlobalKey<FormBuilderState>();
final _emailFieldKey = GlobalKey<FormBuilderFieldState>();

class Prenota extends StatefulWidget {
  const Prenota({Key? key}) : super(key: key);

  @override
  State<Prenota> createState() => _PrenotaState();
}

class _PrenotaState extends State<Prenota> {
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
              MaterialButton(
                onPressed: () {},
                child: Text("Seleziona una data", selectionColor: Colors.white,),
                color: Colors.white,
              ),

            ],
          ), // This trailing comma makes auto-formatting nicer for build methods.
       ),
      ),

    );
  }

}

