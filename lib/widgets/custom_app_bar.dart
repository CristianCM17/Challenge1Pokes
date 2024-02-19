import 'package:animate_do/animate_do.dart';
import 'package:challenge1/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      title: const Text(
        "Pokémon",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: AppConstantsColor.darkTextColor,
        ),
      ),
     

      actions: [
       Padding(
         padding: const EdgeInsets.only(right: 25.0),
         child: SpinPerfect(
          infinite: true,
          child: Image.asset('assets/pokebola.png')),
       )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight); // Tamaño preferido del AppBar
}