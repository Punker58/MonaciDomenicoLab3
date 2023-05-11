import 'package:flutter/material.dart';

// testo bold
final ZenBold = TextStyle(
  fontFamily: 'ZenAntique',
  fontWeight: FontWeight.w700,
);

// style
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