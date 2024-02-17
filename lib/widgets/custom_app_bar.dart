import 'package:challenge1/utils/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: const Text("Discover", style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold, color: AppConstantsColor.darkTextColor)),
          actions: [
            IconButton(onPressed: (){
               
            },
             icon: const Icon(
              CupertinoIcons.search,
              size: 25,
              color: AppConstantsColor.darkTextColor,
             )
           ),
            IconButton(onPressed: (){
               
            },
             icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 25,
              color: AppConstantsColor.darkTextColor,
             )
           ),
          ],
        ),
      ),
    );
  }
}