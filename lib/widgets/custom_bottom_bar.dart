import 'package:challenge1/utils/constants.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  final Color color; // Nuevo parámetro
   const CustomBottomBar({
    Key? key,
    required this.color, // Agregar el nuevo parámetro al constructor
  }) : super(key: key);

  @override
  State<CustomBottomBar> createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  int _selectedIndex=0;

  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomNavigationBar(
        currentIndex: _selectedIndex, //el index actual 0
        onTap: _onItemTapped, //lo que hace cuando se toca elelemento, va a cambiar de index
        iconSize: 27.0,
        selectedColor: widget.color,
        strokeColor: widget.color,
        bubbleCurve: Curves.linear,
        unSelectedColor: AppConstantsColor.unSelectedTextColor,
        scaleFactor: 0.2,//tamanio de la animacion cuando es seleccionada
        isFloating: true,
        borderRadius: Radius.circular(50),
        items: [
          CustomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
          CustomNavigationBarItem(icon: Icon(CupertinoIcons.shopping_cart)),
          CustomNavigationBarItem(icon: Icon(CupertinoIcons.person))
        ],
      ),
    );
  }
}