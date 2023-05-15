import 'package:flutter/material.dart';
import '../../style/style.dart';

class MyappBar extends StatelessWidget implements PreferredSizeWidget {

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Column(
        children: [
          Text("MONACIDOMENICO.LAB", style: zenBold),
          Text("HAIR DESIGNER", style: zenLight),
        ],
      ),

      centerTitle: true,
      toolbarHeight: 110,
      backgroundColor: Colors.white,
      elevation: 10,
  );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100.0);
}


