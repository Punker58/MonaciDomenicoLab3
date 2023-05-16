import 'package:flutter/material.dart';

// testo bold
const zenBold = TextStyle(
  fontFamily: 'ZenAntique',
   fontWeight: FontWeight.w700,
);

const zenLight = TextStyle(
  fontFamily: 'ZenAntique',
  fontWeight: FontWeight.w200,
  fontSize: 18,
);

final ButtonStyle style =
ElevatedButton.styleFrom(
  textStyle: const TextStyle(fontSize: 25),
  backgroundColor: Colors.black87,
  foregroundColor: Colors.white,
  padding: const EdgeInsets.all(30),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(50),
  ),
);

final ButtonStyle style2 =
ElevatedButton.styleFrom(
    textStyle: const TextStyle(fontSize: 25),
    padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
    backgroundColor: Colors.indigo,
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.zero)
);

